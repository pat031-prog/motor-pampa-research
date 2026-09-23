# IOSFA: mora informativa y construcción técnica de la prueba

`CORTES SIP / 2026-06-02 Y 2026-07-20` · Los datos describen registros administrativos; no cuentan afiliados ni prestaciones denegadas.

El trabajo reúne dos frentes. El primero mide expedientes de acceso a la información asociados a IOSFA en el [dataset oficial de solicitudes AAIP](https://datos.gob.ar/dataset/aaip-solicitudes-acceso-informacion-publica). El segundo construye un protocolo para preservar y conciliar registros durante la transición a OSFA y OSFFESEG, establecida por el [Decreto 88/2026](https://www.argentina.gob.ar/normativa/nacional/decreto-88-2026-422981/texto).

## Serie y denominadores

| Medida del legajo | Universo exacto | Lectura |
|---|---|---|
| 101 vencidos, 02-06-2026 | Sujeto canónico IOSFA en el primer SIP | Cohorte fija para comparación longitudinal |
| 101 de 101 todavía vencidos, 20-07-2026 | Los mismos expedientes en el segundo corte | No hubo cambio de estado ni de fecha de último pase en el registro durante los 48 días |
| 102 vencidos de 137 registros, 20-07-2026 | Sujeto canónico IOSFA en el segundo SIP | Stock estricto de ese corte: 74,5 % |
| 113 vencidos, 20-07-2026 | Filas cuya repartición actual termina en `#IOSFA`, aunque otro sujeto figure como titular | Universo de ruteo distinto; requiere conciliación de once filas |

`[A]` El diccionario de la AAIP define “Vencido” como una solicitud aún en trámite con plazo legal incumplido. El estado puede desactualizarse si hubo respuesta fuera del SIP. Por eso la persistencia registral no demuestra, caso por caso, silencio material absoluto.

La fecha de último pase del 04-09-2025 aparece concentrada en numerosos registros: 95 filas canónicas IOSFA comparten esa fecha, 94 de ellas vencidas en el corte actual. `[B]` Es compatible con un movimiento registral masivo. Sin bitácoras de GDE no se conoce el operador, la actuación común ni el motivo. El ranking depende de la canonicalización de nombres y debe publicarse junto con la tabla de equivalencias.

## Arquitectura de prueba de prestaciones

El [Decreto 88/2026](https://www.argentina.gob.ar/normativa/nacional/decreto-88-2026-422981/texto) y la [estructura posterior de OSFFESEG](https://www.boletinoficial.gob.ar/detalleAviso/primera/344256/20260714) fijan el cambio institucional. Para examinar continuidad prestacional, la investigación diseñó diez subclases por circuito común: medicación de alto costo, internación domiciliaria, salud mental, discapacidad, reintegros, corte territorial de red, odontología, VIH, elementos/prácticas y pago a prestadores. Cada subclase requiere fecha de solicitud, autorización o rechazo, prestador, sistema de origen, migración y eventual pago. Son unidades de auditoría, no grupos de pacientes publicados aquí.

Las fuentes jurisdiccionales y las auditorías institucionales documentan problemas y episodios particulares, pero no constituyen por sí mismas un denominador nacional de daño clínico. El núcleo técnico es preservar exportaciones y bitácoras de SIP/GDE, SIACC, SGPS, SUA y sistemas auxiliares; documentar borrados y actualizaciones masivas; y conciliar los lotes aceptados y rechazados en la transferencia IOSFA→OSFA/OSFFESEG. La base de prestaciones debe quedar bajo custodia competente y con privacidad sanitaria.

El protocolo identifica sistemas y custodios, propone snapshots de origen y destino con hash SHA-256, conteos de control, reglas de transformación, excepciones y actas de aceptación o rechazo. Es una **arquitectura de preservación y contraste para una eventual auditoría o litigio**, no constancia de que se hayan recibido los logs internos, ejecutado una extracción forense o producido una pericia judicial. El cotejo efectivo requeriría acceso legítimo a esos registros y supervisión técnica y jurídica apropiada.

## Conclusión acotada

`[A]` Hay un patrón medible de mora en el registro público y una divergencia de identificación entre sujeto canónico y repartición. `[B]` La transición vuelve prioritario preservar datos y reconstruir la cadena de custodia. No se ha demostrado con esta serie que todos los afiliados hayan sufrido el mismo daño prestacional. Esa afirmación requiere los registros internos, denominadores compatibles y revisión jurídica específica.
