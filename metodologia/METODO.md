# Método Motor Pampa

`MP-MET / v1.0 / 2026-09-22`

La unidad mínima de trabajo no es el documento encontrado sino la afirmación que puede sostenerse. El método conserva la cadena entre pregunta, búsqueda, fuente, transformación, análisis y conclusión.

## 1. Encuadre

Antes de buscar se registra:

- decisión que el trabajo debe informar;
- pregunta principal y subpreguntas;
- jurisdicción, período y entidades incluidas;
- fuentes permitidas y restricciones de acceso;
- daño plausible, conflictos y deberes de cuidado;
- condición de cierre y formato de entrega.

Una pregunta abierta sin criterio de cierre produce acumulación, no inteligencia.

## 2. Plan de afirmaciones

Se anticipan las afirmaciones necesarias para responder la pregunta. Para cada una se define qué evidencia la sostendría, qué evidencia la debilitaría y qué fuente sería preferible.

Campos mínimos:

| Campo | Descripción |
|---|---|
| `claim_id` | Identificador estable |
| `claim_text` | Afirmación precisa y falsable |
| `grade` | A, B, C o NEG |
| `source_ids` | Fuentes que sostienen o contradicen |
| `alternative` | Explicación alternativa relevante |
| `breaks_if` | Hecho que refutaría la conclusión |
| `status` | abierta, sostenida, contradicha o descartada |

## 3. Adquisición y procedencia

Cada ítem conserva URL o ubicación, título, emisor, fecha de publicación, fecha de consulta, formato, alcance y, cuando corresponde, hash criptográfico. Los archivos se mantienen sin editar y las transformaciones se hacen sobre copias de trabajo.

Las capturas se usan como evidencia auxiliar. Siempre que exista, se conserva además el documento o dato subyacente.

## 4. Normalización

Los datos se transforman con reglas explícitas:

- fechas en ISO 8601;
- montos con moneda y unidad;
- entidades con identificador canónico y alias;
- ubicaciones con jurisdicción separada de domicilio textual;
- valores faltantes diferenciados de cero;
- campos derivados marcados como tales;
- filas descartadas registradas en una bitácora.

Toda tabla derivada debe poder rastrearse hasta su insumo y transformación.

## 5. Triangulación

Una coincidencia no prueba causalidad. El análisis separa:

1. hechos contenidos en fuentes primarias;
2. corroboraciones independientes;
3. deducciones del analista;
4. indicios no confirmados;
5. búsquedas negativas relevantes.

Cuando dos fuentes repiten un mismo comunicado no cuentan como dos corroboraciones independientes.

## 6. Evaluación

### Grado de evidencia por afirmación

- `[A]` Probado. Fuente primaria o combinación independiente suficiente. Puede publicarse como hecho dentro del alcance declarado.
- `[B]` Deducción. Inferencia razonable que se presenta como tal, con alternativa y límite.
- `[C]` Indicio. Fuente única, interesada o todavía no corroborada. No se publica como hecho.
- `[NEG]` Evidencia negativa. Búsqueda documentada que no encontró el respaldo esperado. No demuestra inexistencia.

### Confianza analítica

La confianza es distinta del grado de evidencia. Resume cuánto depende la evaluación de supuestos, cobertura incompleta o ambigüedad. Se expresa como baja, moderada o alta y siempre incluye fundamento.

## 7. Revisión adversarial

Antes de entregar se intenta romper cada conclusión:

- búsqueda de homónimos y errores de identidad;
- inversión de la hipótesis;
- revisión de fechas incompatibles;
- fuentes ausentes que deberían existir;
- dependencia de una única cadena de republicación;
- explicación benigna razonable;
- sesgo de selección y denominadores incorrectos.

## 8. Entrega

Un paquete estándar incluye:

- resumen ejecutivo orientado a decisión;
- alcance y exclusiones;
- hallazgos con grado de evidencia;
- matriz de afirmaciones;
- cronología o mapa de relaciones cuando aporta comprensión;
- registro de fuentes;
- anexos reproducibles;
- vacíos, límites y próximos pasos.

## 9. Versionado y cambios

Cada entrega recibe una fecha de corte. Una versión nueva registra qué fuentes entraron, qué afirmaciones cambiaron y por qué. Un hallazgo no se sobreescribe silenciosamente.

## 10. Criterio de publicación

La publicación requiere simultáneamente:

- interés público o utilidad legítima;
- respaldo proporcional a la gravedad de la afirmación;
- revisión de privacidad y daño;
- lenguaje que distinga hecho, inferencia y alegación;
- derecho de respuesta cuando corresponde;
- conservación de la ruta de auditoría.
