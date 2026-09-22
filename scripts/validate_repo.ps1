[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

$buyersPath = Join-Path $repoRoot 'comercial\mapa_compradores.csv'
$buyers = Import-Csv -LiteralPath $buyersPath
if ($buyers.Count -ne 30) {
  $errors.Add("El mapa debe contener 30 filas y contiene $($buyers.Count).")
}

$ranks = @($buyers | ForEach-Object { [int]$_.rank })
if (($ranks | Sort-Object -Unique).Count -ne $buyers.Count) {
  $errors.Add('El mapa contiene ranks duplicados.')
}

foreach ($required in 1..10) {
  if ($required -notin $ranks) {
    $errors.Add("Falta el rank $required.")
  }
}

$markdownFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File -Filter '*.md' |
  Where-Object { $_.FullName -notmatch '[\\/]_build[\\/]' }

$linkPattern = '\[[^\]]+\]\(([^)]+)\)'
foreach ($file in $markdownFiles) {
  $content = Get-Content -LiteralPath $file.FullName -Raw
  foreach ($match in [regex]::Matches($content, $linkPattern)) {
    $target = $match.Groups[1].Value.Split('#')[0]
    if (-not $target -or $target -match '^(https?://|mailto:|#)') { continue }
    $decoded = [Uri]::UnescapeDataString($target)
    $resolved = Join-Path $file.DirectoryName $decoded
    if (-not (Test-Path -LiteralPath $resolved)) {
      $errors.Add("Enlace local roto en $($file.FullName): $target")
    }
  }
}

$textFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File |
  Where-Object {
    $_.Extension -in @('.md', '.csv', '.html', '.css', '.yml', '.yaml', '.cff', '.ps1') -and
    $_.FullName -notmatch '[\\/]_build[\\/]' -and
    $_.FullName -ne $PSCommandPath
  }

$secretPatterns = @(
  '-----BEGIN (RSA |EC |OPENSSH |PGP )?PRIVATE KEY-----',
  'ghp_[A-Za-z0-9]{30,}',
  'github_pat_[A-Za-z0-9_]{30,}',
  'AKIA[0-9A-Z]{16}'
)

foreach ($file in $textFiles) {
  $content = Get-Content -LiteralPath $file.FullName -Raw
  foreach ($pattern in $secretPatterns) {
    if ($content -match $pattern) {
      $errors.Add("Posible secreto en $($file.FullName).")
    }
  }
}

foreach ($forbiddenName in @('Cerimedo', 'Cannava', 'Cannis')) {
  foreach ($file in $textFiles) {
    if ((Get-Content -LiteralPath $file.FullName -Raw) -match [regex]::Escape($forbiddenName)) {
      $errors.Add("Nombre de expediente privado en el paquete público: $forbiddenName en $($file.FullName).")
    }
  }
}

if (-not (Test-Path -LiteralPath (Join-Path $repoRoot 'presentacion\Motor_Pampa_Research.pptx'))) {
  $errors.Add('Falta la presentación final.')
}

if ($errors.Count) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output "OK: 30 compradores, ranks únicos, enlaces locales válidos, sin patrones de secretos ni nombres de expedientes privados."
