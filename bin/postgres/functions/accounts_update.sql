--UPDATE all account information except email, hashed password and salt.
CREATE OR REPLACE FUNCTION accounts_update(
    id INTEGER,
    provider VARCHAR(256), 
    verified BOOLEAN,
    first_name VARCHAR(256), 
    last_name VARCHAR(256), 
    mobile_phone VARCHAR(25),
    last_login TIMESTAMP, 
    created_by BIGINT, 
    created_on TIMESTAMP, 
    updated_by BIGINT, 
    updated_on TIMESTAMP,
    x BOOLEAN) 
RETURNS VOID AS 
$$
BEGIN
    UPDATE accounts a
    SET
        provider = $2,
        verified = $3,
        first_name = $4, 
        last_name = $5, 
        mobile_phone = $6, 
        last_login = $7,
        created_by = $8, 
        created_on = $9, 
        updated_by = $10, 
        updated_on = $11,
        x = $12 
    WHERE a.id = $1;
END;
$$ LANGUAGE plpgsql;

