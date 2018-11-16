CREATE SCHEMA IF NOT EXISTS SCHMA_schma AUTHORIZATION planea_admin;

SET search_path = SCHMA_schma;

ALTER ROLE planea_admin IN DATABASE planea SET search_path = SCHMA_schma;
ALTER ROLE planea_mgr   IN DATABASE planea SET search_path = SCHMA_schma;
ALTER ROLE planea_usr   IN DATABASE planea SET search_path = SCHMA_schma;

GRANT USAGE ON schema SCHMA_schma TO planea_usr;
GRANT CREATE ON schema SCHMA_schma TO planea_mgr;

ALTER DEFAULT PRIVILEGES FOR ROLE planea_admin GRANT SELECT                           ON TABLES TO planea_usr;
ALTER DEFAULT PRIVILEGES FOR ROLE planea_admin GRANT INSERT, UPDATE, DELETE, TRUNCATE ON TABLES TO planea_mgr;
ALTER DEFAULT PRIVILEGES FOR ROLE planea_admin GRANT USAGE, SELECT, UPDATE            ON SEQUENCES TO planea_mgr;

--Tablas de Etiquetas
COPY alumnos_etiquetas FROM 'DIRECTORY/catalogoalumnos.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY directores_etiquetas FROM 'DIRECTORY/catalogodirectores.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY escuelas_etiquetas FROM 'DIRECTORY/catalogoescuelas.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY grupos_etiquetas FROM 'DIRECTORY/catalogogrupos.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY campos_significado FROM 'DIRECTORY/etiquetasVariables.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';

--Tablas de Etiquetas compresas, para analisis
COPY grupos_etiquetas_min FROM 'DIRECTORY/catalogogruposmin.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY escuelas_etiquetas_min FROM 'DIRECTORY/catalogoescuelasmin.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY directores_etiquetas_min FROM 'DIRECTORY/catalogodirectoresmin.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY alumnos_etiquetas_min FROM 'DIRECTORY/catalogoalumnosmin.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';

-- Tablas de Contenido
COPY alumnos FROM 'DIRECTORY/alumnos.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY directores FROM 'DIRECTORY/directores.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY escuelas FROM 'DIRECTORY/escuelas.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';
COPY grupos FROM 'DIRECTORY/grupos.csv' DELIMITER ',' CSV NULL as '\N' HEADER encoding 'latin1';

-- INDEXES
CREATE INDEX index_catalogo_grupos ON grupos_etiquetas (id_etiqueta, opciones);
CREATE INDEX index_catalogo_escuelas ON escuelas_etiquetas (id_etiqueta, opciones);
CREATE INDEX index_catalogo_directores ON directores_etiquetas (id_etiqueta, opciones);
CREATE INDEX index_catalogo_alumnos ON alumnos_etiquetas (id_etiqueta, opciones);

CREATE INDEX index_catalogo_grupos_min ON grupos_etiquetas_min (id_etiqueta, opciones);
CREATE INDEX index_catalogo_escuelas_min ON escuelas_etiquetas_min (id_etiqueta, opciones);
CREATE INDEX index_catalogo_directores_min ON directores_etiquetas_min (id_etiqueta, opciones);
CREATE INDEX index_catalogo_alumnos_min ON alumnos_etiquetas_min (id_etiqueta, opciones);