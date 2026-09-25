# Mapa científico e institucional

`CORTE DEL MAPA / 2026-06-22`

El observatorio integra once mapas: acceso a información; recuperación documental; presupuesto; REPROCANN; INASE; ciencia y ensayos; provincias; ANMAT/INAME; compras; comercio exterior; y actividad parlamentaria. Cada mapa define una unidad de análisis distinta. La existencia de una norma, publicación, convocatoria o anuncio no equivale a producto autorizado, compra ejecutada, entrega o exportación atribuible a una empresa.

Antes de ampliar estos mapas, el equipo [auditó el dossier previo](observatorio-cannis.md): corrigió un proxy de reclamos demasiado amplio, registró los objetos no recuperados y retiró cifras presupuestarias simuladas. Esa depuración forma parte del resultado, no sólo de la cocina metodológica.

## Cómo se conectan capas que no significan lo mismo

Cada mapa conserva su propia unidad: un trabajo bibliográfico, un registro de ensayo, un cultivar, una convocatoria, una norma o un proyecto legislativo. Se deduplican candidatos **dentro de su capa** y sólo se trazan enlaces entre capas cuando identificadores, fechas y documentos permiten sostenerlos. Una afiliación institucional en metadatos no acredita que esa institución haya fabricado un producto; una compra convocada no acredita entrega.

La salida útil no es sumar once números heterogéneos, sino localizar **dónde existe un puente verificable y dónde falta**: entre investigación y ensayo, ensayo y autorización, autorización y operador, operador y compra, o anuncio y ejecución. Ese mapa de brechas orienta la siguiente búsqueda documental y deja visible la incertidumbre. Ver [del archivo al hallazgo](../metodologia/DEL_ARCHIVO_AL_HALLAZGO.md).

## Ciencia y capacidad visible

El barrido de [OpenAlex](https://openalex.org/) registró **214 trabajos candidatos únicos** con afiliación argentina y vocabulario temático, asociados a **121 instituciones argentinas**. Son metadatos bibliográficos: el recuento depende de indexación, consulta y deduplicación. No mide por sí solo impacto clínico, financiamiento vigente ni transferencia industrial. El [Sistema Nacional de Repositorios Digitales](https://repositoriosdigitales.mincyt.gob.ar/vufind/) aportó **286 registros candidatos** después de filtrar títulos y deduplicar URLs.

El cruce de [ClinicalTrials.gov](https://clinicaltrials.gov/study/NCT06629389) con RENIS permitió confirmar un ensayo fase II de cannabidiol para síntomas de Parkinson con sede en Mendoza. La concordancia de protocolo, producto, condición y patrocinador aporta una referencia específica de capacidad clínica; no demuestra una cadena productiva provincial completa.

## De la investigación al acceso

| Capa | Resultado del corte | Límite |
|---|---|---|
| Ciencia | 214 trabajos candidatos, 121 instituciones | Metadatos, no resultados terapéuticos |
| INASE | 52 cultivares en el catálogo temático | Un título RNPC no prueba anualidad operativa ni comercialización |
| Compras | Ocho ítems temáticos y dos convocatorias en el bulk localizado hasta 2020 | Convocatoria no prueba adjudicación, recepción o entrega |
| Ensayos | Un protocolo temático enlazado entre dos registros | No representa todo el universo de investigación clínica |
| REPROCANN judicial | Sin expediente verificable en el corte de esta capa | No publicar cifra de judicialización a partir de referencias agregadas |
| Actividad parlamentaria | 115 proyectos únicos recuperados de Diputados | Proyecto no equivale a ley vigente o implementación |

La serie abierta de operadores INASE disponible en el catálogo nacional terminaba en 2017–2018 y no identificaba especie. Una búsqueda de productos o regulaciones ANMAT localizó documentos, pero no un padrón reutilizable de productos cannabis, titulares, expedientes e inspecciones. La brecha principal es de enlace entre ciencia, autorización, operador, compra, prestación y resultado. `[B]` Esa es una síntesis de cobertura documental, no un juicio sobre la eficacia de toda la política pública.

El mapa provincial conserva puntajes de **evidencia pública localizada**, no de calidad sanitaria: Mendoza 9/15, Entre Ríos y Jujuy 7/15, La Rioja y Misiones 5/15, Corrientes 4/15 en la auditoría conservadora del corte. Jujuy perdió un punto cuando se dejó de contar una exportación anunciada como salida verificada. Para el caso específico de Cannava, ver la [reconstrucción contractual y societaria](cannava.md).

**Fuentes de entrada:** [OpenAlex](https://api.openalex.org/), [SNRD](https://repositoriosdigitales.mincyt.gob.ar/vufind/), [ClinicalTrials.gov](https://clinicaltrials.gov/), [INASE](https://www.argentina.gob.ar/inase), [ANMAT](https://www.argentina.gob.ar/anmat) y [datos de proyectos de la Cámara de Diputados](https://datos.hcdn.gob.ar/). Las consultas, filtros, fecha y hashes se conservaron en el archivo de trabajo.
