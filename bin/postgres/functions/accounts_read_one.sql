--READ
CREATE OR REPLACE FUNCTION accounts_read(
    id INTEGER)
RETURNS TABLE(provider VARCHAR(256), 
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
            x BOOLEAN) AS
$$
BEGIN
    RETURN QUERY
    SELECT a.provider, 
        a.verified,
        a.email, 
        a.first_name, 
        a.last_name, 
        a.hashed_password, 
        a.salt, 
        a.mobile_phone, 
        a.last_login,
        a.created_by, 
        a.created_on, 
        a.updated_by, 
        a.updated_on,
        a.x
    FROM accounts a WHERE a.id = $1;
    RETURN;
END;
$$ LANGUAGE plpgsql;

