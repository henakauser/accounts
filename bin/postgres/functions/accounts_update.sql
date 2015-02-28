--UPDATE
CREATE OR REPLACE FUNCTION accounts_update(
    id INTEGER,
    provider VARCHAR(256), 
    verified BOOLEAN,  
    email VARCHAR(256), 
    first_name VARCHAR(256), 
    last_name VARCHAR(256), 
    hashed_password VARCHAR(256), 
    salt VARCHAR(256), 
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
        email = $4,
        first_name = $5, 
        last_name = $6, 
        hashed_password = $7, 
        salt = $8, 
        mobile_phone = $9, 
        last_login = $10,
        created_by = $11, 
        created_on = $12, 
        updated_by = $13, 
        updated_on = $14,
        x = $15 
    WHERE a.id = $1;
END;
$$ LANGUAGE plpgsql;

