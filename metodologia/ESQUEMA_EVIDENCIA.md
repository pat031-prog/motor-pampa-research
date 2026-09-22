# Esquema de evidencia

## Objetos

### Fuente

Registro de un material consultado. Incluye procedencia, fecha de acceso, emisor, formato, alcance, restricciones y huella de integridad cuando aplica.

### Extracto

Pasaje, fila o elemento puntual tomado de una fuente. Nunca reemplaza el contexto completo.

### Afirmación

Proposición verificable que puede sostener, debilitar o no afectar una hipótesis.

### Transformación

Paso reproducible que convierte una fuente en una tabla, métrica, entidad o relación. Debe declarar insumo, regla, herramienta y salida.

### Hallazgo

Conclusión que reúne afirmaciones y explicita grado de evidencia, confianza, alternativa y condición de refutación.

## Relación mínima

```text
PREGUNTA
  └─ HIPÓTESIS
      ├─ AFIRMACIÓN
      │   ├─ EXTRACTO
      │   │   └─ FUENTE
      │   └─ TRANSFORMACIÓN
      └─ HALLAZGO
          ├─ GRADO
          ├─ ALTERNATIVA
          └─ SE ROMPE SI
```

## Convención de IDs

- Caso: `MP-AAAA-NNN`
- Fuente: `SRC-NNN`
- Afirmación: `CLM-NNN`
- Transformación: `TR-NNN`
- Hallazgo: `FND-NNN`

Los ejemplos públicos usan identificadores ficticios y no permiten inferir la numeración interna.
