# Acceso a la información: quién acumula expedientes vencidos

`FUENTE AAIP / CORTE 2026-06-02` · Serie histórica de solicitudes desde 2017.

La auditoría tomó **62.311 filas** del [dataset de solicitudes AAIP](https://datos.gob.ar/dataset/aaip-solicitudes-acceso-informacion-publica) y **4.451 reclamos** del [dataset de reclamos](https://datos.gob.ar/dataset/aaip-reclamos-sobre-solicitudes-acceso-informacion-publica). En el corte SIP había 59.560 registros `Resuelto`, 2.319 `Vencido`, 217 `En plazo` y 215 `En prórroga`. “Resuelto” significa que se comunicó una respuesta; no afirma que haya sido suficiente ni oportuna. “Vencido” es el estado publicado por la autoridad, sujeto a errores o retrasos de actualización.

## Del registro a una medida que se pueda discutir

El trabajo conserva una fila por solicitud y trata como campos distintos al **sujeto obligado**, la **repartición actual**, el estado y las fechas. Antes de comparar organismos se fijan el universo y la cohorte, se revisan denominaciones institucionales, se cuentan numeradores y denominadores y se registran los casos que no pueden atribuirse de forma inequívoca. El resultado público es una tabla agregada que permite recalcular cada proporción; no exige aceptar un ranking de caja negra.

Hay además una segunda lectura del mismo corpus: seguir la ubicación y el último pase de los expedientes vencidos para formular preguntas sobre el circuito administrativo. Esa lectura no reemplaza el expediente individual ni identifica automáticamente quién demoró una respuesta. El [recorrido del motor](../metodologia/DEL_ARCHIVO_AL_HALLAZGO.md) describe por qué normalización, comparación y ruta de prueba son capas distintas.

## Comparación por sujeto obligado

Se muestran sujetos con al menos 50 solicitudes, usando el nombre y estado atribuidos por la base al corte. La tasa es **vencidos registrados / solicitudes del sujeto en este archivo**; no es una probabilidad prospectiva de respuesta.

La [tabla agregada descargable](datos/aaip_ranking_20260602.csv) conserva los numeradores y denominadores de esta selección para reutilización y contraste. No incluye solicitantes ni identificadores de expedientes.

| Sujeto obligado | Solicitudes | Vencidas | Proporción registrada |
|---|---:|---:|---:|
| Ministerio de Desregulación y Transformación del Estado | 255 | 153 | 60,0 % |
| Secretaría de Comunicación y Medios | 97 | 41 | 42,3 % |
| Secretaría de Prensa | 108 | 36 | 33,3 % |
| Ministerio de Seguridad Nacional | 1.003 | 113 | 11,3 % |
| Secretaría General | 1.493 | 99 | 6,6 % |
| Ministerio de Defensa | 2.485 | 156 | 6,3 % |
| Ministerio de Salud | 7.973 | 501 | 6,3 % |
| Total del archivo | 62.311 | 2.319 | 3,7 % |

Los ministerios de Economía y Salud tienen más vencidos en número absoluto que varios de los primeros puestos, porque reciben un volumen mucho mayor. Por eso el orden cambia cuando se usa stock, proporción o duración. Las solicitudes recientes sufren censura temporal: todavía no todas tuvieron tiempo de vencer. Un ranking por año de ingreso necesita cohortes maduras, y los cambios de estructura ministerial requieren una tabla de equivalencias antes de comparar períodos.

## Utilidad para reclamos y litigios

El cálculo no termina en un ranking. Para un sujeto obligado se puede construir una **línea de base de respuesta** con numerador, denominador, período, cohorte y estado; contrastarla con solicitudes comparables; y adjuntar la ficha del expediente concreto, sus pases, notificaciones y respuestas. Ese paquete permite a un equipo jurídico argumentar con contexto empírico sobre una demora o una práctica administrativa, formular pedidos de prueba y discutir explicaciones alternativas. La [Ley 27.275](https://www.argentina.gob.ar/normativa/nacional/265949/texto) prevé vías de reclamo y control judicial; esta base no sustituye los requisitos ni los plazos de cada caso.

No se obtiene una “tasa de respuesta” fiable promediando porcentajes de organismos con tamaños distintos. Para el universo combinado se suman numeradores y denominadores, y se separa **respuesta comunicada, respuesta en plazo, vencimiento y suficiencia del contenido**. La base pública usada aquí permite medir con claridad el estado `Vencido` al corte, no demostrar por sí sola cuándo llegó cada respuesta ni si fue completa. La proporción agregada del archivo es 2.319/62.311 = **3,7 % de vencidos registrados**; su complemento no es una tasa de respuesta oportuna y satisfactoria.

## Otra pregunta: dónde queda el expediente

El campo `reparticion_actual` localiza el trámite **hoy**; no identifica necesariamente al organismo que lo recibió, debía responderlo o lo demoró históricamente. Con ese campo, el corte mostraba 111 vencidos entre 114 expedientes alojados en reparticiones IOSFA, 76 de 76 en ARN y 117 de 131 en ANLIS. Son colas retenidas al corte, no tasas históricas de respuesta de esas instituciones. El [análisis IOSFA](iosfa.md) repite el cálculo con sujeto canónico y un segundo corte para evitar mezclar universos.

## Del ranking al recorrido administrativo

El análisis también clasifica **dónde queda detenido un expediente**: recepción, pase, derivación, gestión o notificación. De las 2.319 solicitudes marcadas `Vencido` al 02-06-2026, 1.687 figuraban en el buzón genérico `TAD_DNAIP`. Ese ruteo es una señal para pedir bitácoras y responsabilidades por etapa; no identifica por sí solo al agente que demoró una respuesta ni prueba que nunca se notificó fuera del sistema. Para priorizar una auditoría se conservan por separado sujeto obligado, custodio actual, fecha de inicio y fecha del último pase.

`[A]` La base permite describir estado, volumen y ubicación administrativa. `[B]` Una explicación causal de la demora, o una conclusión sobre mala fe institucional, exige actuaciones completas, movimientos GDE y respuestas notificadas. El ranking sirve para seleccionar pedidos y auditorías, no para sustituirlos.
