# Del archivo al hallazgo: qué hace el motor

Un resultado de Motor Pampa no es una colección de enlaces ni una respuesta producida por un modelo. Es una cadena de trabajo donde una persona puede volver desde una cifra, una relación o una frase del informe hasta los documentos y las decisiones analíticas que la sostienen. Esta página muestra **la arquitectura observable**, no el código, las reglas internas de extracción ni el corpus de trabajo.

| Capa | Qué entra | Qué se puede revisar en la entrega |
|---|---|---|
| Ingesta | Contratos, boletines, expedientes, bases, informes o registros obtenidos legítimamente | Universo de búsqueda, custodio, fecha de corte y registro de fuentes |
| Preservación | El archivo tal como fue obtenido | Copia separada de derivados, procedencia, tamaño y hash cuando corresponde; incidencias de captura |
| Normalización | Fechas, nombres, estados, unidades y tablas que no nacieron compatibles | Diccionario, equivalencias, campos derivados, faltantes y filas que no pudieron resolverse |
| Cruce | Documentos o registros de más de un sistema | Claves y unidades comparables, coincidencias, contradicciones y conexiones **candidatas** |
| Prueba adversarial | La hipótesis que parecía sostenerse | Alternativas, controles, denominadores, búsquedas negativas delimitadas y afirmaciones retiradas |
| Expediente de salida | Sólo lo que resistió la revisión | Matriz afirmación–fuente, cronología o tabla, hallazgos graduados, límites y diligencias pendientes |

Los formatos cambian según el caso. A veces el elemento decisivo es una cláusula de un contrato; otras, una fila cuyo `sujeto_obligado` no coincide con su `reparticion_actual`, o dos sistemas estadísticos que cuentan unidades distintas. La regla constante es **no hacer pasar una transformación por documento original, un candidato por identidad acreditada ni un vacío de búsqueda por inexistencia**.

## Siete recorridos observables

| Investigación | Operación que importa | Salida y control visible |
|---|---|---|
| [Cannava](../investigaciones/cannava.md) | Leer instrumentos SEC, CSE y boletines como documentos de jerarquía distinta; ordenar 25 actos y distinguir dos corredores contractuales principales sin unirlos por conjetura | Cadena de derechos y 27 instrumentos o comprobaciones pendientes; cada tramo declara fuente y condición |
| [Cerimedo](../investigaciones/cerimedo.md) | Separar dictamen electoral, registro FARA, avisos societarios y contratación; fijar personas, roles y fechas sin resolver homónimos por proximidad | Cronología y matriz de afirmaciones; hipótesis descartadas y documentos que cambiarían el resultado |
| [Acceso a la información](../investigaciones/acceso-informacion.md) | Procesar 62.311 solicitudes y 4.451 reclamos; distinguir sujeto, repartición, estado, cohorte y denominador | Ranking con numeradores y denominadores exportables; ninguna cifra se presenta como tasa de respuesta satisfactoria |
| [IOSFA](../investigaciones/iosfa.md) | Comparar dos cortes SIP sin mezclar la cohorte fija, el stock del segundo corte y las filas alojadas en una repartición | Tres universos publicados por separado (101, 102 y 113) y plan de prueba para registros internos todavía no obtenidos |
| [Suicidios](../investigaciones/suicidios.md) | Construir tasas y estimaciones propias sobre estadísticas vitales; contrastar DEIS, SNIC, SNVS y MPA según su unidad | Serie, sensibilidad de clasificación y crítica de cobertura; no se suman registros no equivalentes |
| [Auditoría de observatorio](../investigaciones/observatorio-cannis.md) | Reproducir filtros y origen de cifras antes de ampliar un mapa | Proxy corregido, cobertura 140/281 explicitada y cifra simulada retirada |
| [Mapa científico](../investigaciones/cannabis-ciencia.md) | Vincular once capas sin confundir publicación, ensayo, autorización, compra y entrega | Candidatos bibliográficos e institucionales con brechas de enlace y estados de evidencia separados |

Las cantidades describen **los cortes de cada investigación**, no un tablero actualizado ni una certificación externa. Cada página enlaza sus fuentes públicas y explica qué no puede concluirse de ellas.

## Qué se enseña y qué permanece dentro del trabajo

En público mostramos la pregunta, la procedencia de las piezas críticas, las unidades de comparación, controles que cambian una conclusión, resultados agregados y las decisiones que quedan abiertas. No publicamos el corpus íntegro de terceros, datos personales, credenciales, correspondencia, scripts internos de cosecha o clasificación ni reglas operativas que permitirían reconstruir toda la infraestructura. Una revisión técnica bajo alcance acordado puede recorrer una muestra local con originales, derivados, manifiesto, tests y salida, sin convertir este repositorio en un depósito de evidencia reservada.

El [método general](METODO.md) explica el estándar analítico; el [esquema de evidencia](ESQUEMA_EVIDENCIA.md) define cómo se enlazan fuente, transformación y afirmación; y la [lista de control](CONTROL_DE_CALIDAD.md) fija los puntos de cierre. Los [formatos de servicio](../comercial/SERVICIOS.md) traducen esta arquitectura en entregables para un equipo jurídico, forense, editorial o de política pública.
