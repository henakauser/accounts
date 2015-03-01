--UPDATE all account information except email, hashed password and salt.
CREATE OR REPLACE FUNCTION accounts_update(
    id BIGINT, 
    provider VARCHAR(256) DEFAULT NULL, 
    verified BOOLEAN DEFAULT NULL,
    first_name VARCHAR(256) DEFAULT NULL, 
    last_name VARCHAR(256) DEFAULT NULL, 
    mobile_phone VARCHAR(25) DEFAULT NULL,
    last_login TIMESTAMP DEFAULT NULL, 
    updated_by BIGINT,
    x BOOLEAN DEFAULT NULL)
  RETURNS VOID AS
$BODY$
BEGIN
EXECUTE FORMAT( 
    'UPDATE accounts SET updated_by = $8, updated_on = Now()' 
        || CASE WHEN provider = NULL THEN '' ELSE ' ,provider = $2' END
        || CASE WHEN verified = NULL THEN '' ELSE ' ,verified = $3' END
        || CASE WHEN first_name = NULL THEN '' ELSE ' ,first_name = $4' END
        || CASE WHEN last_name = NULL THEN '' ELSE ' ,last_name = $5' END
        || CASE WHEN mobile_phone = NULL THEN '' ELSE ' ,mobile_phone = $6' END
        || CASE WHEN last_login = NULL THEN '' ELSE ' ,last_login = $7' END
        || CASE WHEN x = NULL THEN '' ELSE ' ,x = $9' END ||
    ' WHERE id = $1') USING id, provider, verified, first_name, last_name, mobile_phone, last_login, updated_by, x;
END;
 $BODY$
  LANGUAGE plpgsql;

