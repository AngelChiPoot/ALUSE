DO
$do$
BEGIN
   IF NOT EXISTS (
      SELECT                       -- SELECT list can stay empty FOR this
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'planea_admin') THEN

      CREATE ROLE planea_admin LOGIN PASSWORD 'pl4n34Adm1n';
   END IF;

   IF NOT EXISTS (
      SELECT                       -- SELECT list can stay empty FOR this
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'planea_mgr') THEN

      CREATE ROLE planea_mgr LOGIN PASSWORD 'pl4n34M62';
   END IF;

   IF NOT EXISTS (
      SELECT                       -- SELECT list can stay empty FOR this
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'planea_usr') THEN

      CREATE ROLE planea_usr LOGIN PASSWORD 'pl4n34U52';
   END IF;
END
$do$;

GRANT planea_usr TO planea_mgr;
GRANT planea_mgr TO planea_admin;

REVOKE ALL     ON DATABASE planea FROM PUBLIC;
GRANT  CONNECT ON DATABASE planea TO   planea_usr;
