UPDATE pg_catalog.pg_database SET datallowconn=false WHERE datname='app';
DROP DATABASE IF EXISTS app;
