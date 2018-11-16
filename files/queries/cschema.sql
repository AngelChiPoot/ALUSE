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