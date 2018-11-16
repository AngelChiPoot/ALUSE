CREATE TABLE planea_schma.escuelasFullCategorical as(
	SELECT
		t2.escuela,
		t2.entidad,
		t2.TipoEscuela,
		turno.contenido as turno
	FROM (
		SELECT
		 t1.escuela,
		 t1.entidad,
		 serv.contenido as TipoEscuela,
		 t1.id_turno
			FROM (
				SELECT
					planea_schma.escuelas.escuela,
					e.contenido as entidad,
					planea_schma.escuelas.id_serv,
					planea_schma.escuelas.id_turno
				FROM(
					(SELECT opciones, contenido FROM planea_schma.escuelasetiquetas WHERE id_etiqueta='ID_ENT') as e
					INNER JOIN planea_schma.escuelas ON planea_schma.escuelas.id_ent = e.opciones
				)
			) as t1
			INNER JOIN (SELECT opciones, contenido FROM planea_schma.escuelasetiquetas WHERE id_etiqueta='ID_SERV') as serv ON t1.id_serv = serv.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido FROM planea_schma.escuelasetiquetas WHERE id_etiqueta='ID_TURNO') as turno ON t2.id_turno = turno.opciones
);



SELECT cate.escuela,
	   e.contenido as entidad,
	   ce.id_serv,
	   planea_schma.escuelas.id_turno
FROM planea_schma.escuelasetiquetas as e
INNER JOIN planea_schma.escuelas ce
	ON ce.id_ent = e.opciones
WHERE id_etiqueta='ID_ENT')





