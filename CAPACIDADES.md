# Capacidades demostradas, caso por caso

Esta página está pensada para quien evalúa el trabajo técnico antes de una reunión. No enumera herramientas en abstracto: cada capacidad remite a una investigación publicada, una operación concreta y una pieza que se puede revisar. El repositorio es una **edición pública**; los originales de terceros se enlazan en sus custodios y el corpus interno no se vuelca aquí.

Motor Pampa funciona como una **cadena de evidencia y análisis**, no como un único scraper o un informe aislado. La [traza pública de esa cadena](metodologia/DEL_ARCHIVO_AL_HALLAZGO.md) permite seguir ingesta, preservación, normalización, cruces, control adversarial y expediente sin revelar las reglas internas ni exponer el corpus.

| Capacidad | Trabajo efectivamente realizado | Dónde revisarlo |
|---|---|---|
| Localización y lectura de documentos primarios | Recuperamos el contrato Cannava–PNTV de 2018, exhibits SEC, un SPA del archivo CSE y boletines societarios; distinguimos texto firmado, declaración regulatoria y ejecución todavía no acreditada. | [Cannava: ruta de documentos](investigaciones/cannava.md#ruta-de-los-documentos-primarios) |
| Reconstrucción societaria y contractual transfronteriza | Seguimos las partes BBV Labs, SATIN y Blueberries y separamos el corredor PNTV–Cannava del acuerdo BBV–Cannava descrito después. Identificamos el instrumento faltante que impide unirlos en una cadena continua. | [Cannava: contratos y derechos](investigaciones/cannava.md) |
| Cronología político-electoral con control de afirmaciones | Cruzamos dictamen CNE, registro FARA y avisos del Boletín Oficial; registramos afirmaciones descartadas y documentos necesarios para cerrar contratación y pagos. | [Cerimedo: hechos y preguntas abiertas](investigaciones/cerimedo.md) |
| Examen técnico acotado de archivos públicos | Revisamos páginas, contenido y metadatos del PDF regulatorio del SPA, incluida la posibilidad de recuperar texto bajo redacciones. El resultado vale para ese archivo, no para un original no publicado. | [Cannava: examen del PDF](investigaciones/cannava.md#examen-técnico-de-un-documento-público) |
| Auditoría de bases administrativas | Procesamos 62.311 solicitudes y 4.451 reclamos AAIP; separamos sujeto obligado, repartición actual, cohorte, estado y denominador. Publicamos numeradores y denominadores agregados del ranking. | [Acceso a la información](investigaciones/acceso-informacion.md) · [CSV agregado](investigaciones/datos/aaip_ranking_20260602.csv) |
| Medición longitudinal y ruta de prueba | Comparamos dos cortes de expedientes IOSFA y distinguimos 101 expedientes de cohorte fija, 102 vencidos del sujeto canónico y 113 por ruteo actual. Diseñamos controles de preservación y conciliación para la transición de sistemas. | [IOSFA: serie y arquitectura](investigaciones/iosfa.md) |
| Estadística propia sobre registros oficiales | Construimos la serie de suicidios 2005–2024 y calculamos tasas, cambios, sensibilidad de clasificación, razones estandarizadas, modelos de tendencia e incertidumbre; explicamos qué parte puede cambiar por cobertura o codificación. | [Suicidios: resultados y método](investigaciones/suicidios.md) |
| Contraste de registros no equivalentes | Comparamos DEIS, SNIC, SNVS y fuentes provinciales sin sumarlos como hechos independientes ni convertir discrepancias en una cifra inventada de subregistro. | [Suicidios: cuatro sistemas](investigaciones/suicidios.md#cuatro-sistemas-cuatro-preguntas) |
| Auditoría adversarial de una investigación | Reprodujimos filtros y cuentas de un dossier, corregimos un proxy temático, hicimos visible la cobertura incompleta de objetos y retiramos una cifra originada en una simulación. | [Auditoría de un observatorio sectorial: tres correcciones](investigaciones/observatorio-cannis.md#tres-correcciones-que-importan) |
| Mapeo científico e institucional | Enlazamos once capas de ciencia, ensayos, regulación, compras, provincias y actividad parlamentaria; diferenciamos metadatos candidatos, autorizaciones, anuncios y ejecución. | [Mapa científico e institucional](investigaciones/cannabis-ciencia.md) |

## Capacidades que atraviesan varios casos

| Capacidad repetible | Evidencia de uso | Para qué le sirve a otro equipo |
|---|---|---|
| Trazabilidad documental | Manifiesto de Cerimedo; contratos y boletines de Cannava; originales enlazados en cada caso | Revisar una afirmación desde el informe hasta el documento y su fecha de corte |
| Normalización de identidades y unidades | Partes y roles en Cannava/Cerimedo; sujeto obligado frente a repartición actual en AAIP/IOSFA; unidad de conteo en suicidios | Evitar falsos vínculos, rankings engañosos y cruces de registros incompatibles |
| Procesamiento de corpus y datos | 62.311 solicitudes AAIP; series de mortalidad; metadatos científicos candidatos | Pasar de archivos dispersos a tablas y medidas auditables, conservando faltantes y excepciones |
| Control adversarial | Afirmaciones retiradas en Cerimedo; proxy y cifra simulada corregidos en el observatorio; sensibilidad de clasificación en suicidios | Saber qué conclusión resiste una revisión escéptica antes de publicarla o usarla |
| Construcción de ruta probatoria | Instrumentos pendientes en Cannava; plan de sistemas y lotes IOSFA; recorrido administrativo AAIP | Convertir el vacío documental en un pedido preciso para el custodio o el equipo jurídico |

Estas son capacidades **observadas en los trabajos citados**, no la promesa de que cualquier soporte o sistema puede procesarse sin preparación. El formato, volumen, permisos y riesgo de un encargo nuevo se revisan antes de ofrecer alcance o plazos.

## Lo que un equipo puede recibir

- **Para investigar o publicar:** cronología, matriz de afirmaciones, documentos originales enlazados, explicación de alternativas, vacíos y preguntas para derecho de respuesta.
- **Para una controversia o auditoría:** inventario de fuentes, medición con denominadores, ruta de expedientes y requerimientos de prueba que un equipo jurídico o pericial puede revisar y adaptar.
- **Para un corpus grande:** índice canónico, procedencia, versiones, hashes cuando corresponda, reglas de extracción y transformación, y bitácora de cambios.
- **Para seguimiento:** universo de fuentes, fecha de corte, cambios materiales y alertas justificadas; no sólo una lista de enlaces.

Los [formatos de servicio](comercial/SERVICIOS.md) y [pilotos](comercial/PILOTOS.md) traducen estas capacidades en alcance, plazo y entregables. El [método](metodologia/METODO.md) y el [esquema de evidencia](metodologia/ESQUEMA_EVIDENCIA.md) muestran cómo se llega de fuente a conclusión.

## Qué está demostrado y qué requiere un nuevo encargo

**Ya hicimos:** recuperación y cotejo de documentos públicos, reconstrucciones societarias, examen del PDF público indicado, auditoría de bases, cálculos propios y diseño de arquitectura probatoria. **No afirmamos haber hecho en estos casos:** una extracción de sistemas internos, una pericia judicial, validación clínica individual ni una cadena de custodia formal sobre datos que no recibimos. Esas diligencias requieren acceso autorizado, custodios y encuadre específicos. Esta distinción permite evaluar el trabajo sin confundir un protocolo técnicamente preparado con una prueba ya producida.

Para revisar rápido, empezar por [Cannava](investigaciones/cannava.md) si interesa la reconstrucción documental, [Acceso a la información](investigaciones/acceso-informacion.md) e [IOSFA](investigaciones/iosfa.md) si interesa uso de datos en una controversia, o [Suicidios](investigaciones/suicidios.md) si interesa análisis estadístico y crítica de registros.
