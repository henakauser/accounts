--CREATE
CREATE OR REPLACE FUNCTION accounts_create(
    provider VARCHAR(256) DEFAULT NULL, 
    verified BOOLEAN DEFAULT FALSE,  
    email VARCHAR(256) DEFAULT NOT NULL, 
    first_name VARCHAR(256) DEFAULT NULL, 
    last_name VARCHAR(256) DEFAULT NULL, 
    hashed_password VARCHAR(256) DEFAULT NOT NULL, 
    salt VARCHAR(256) DEFAULT NOT NULL, 
    mobile_phone VARCHAR(25) DEFAULT NULL,
    last_login TIMESTAMP DEFAULT NULL, 
    created_by BIGINT DEFAULT NULL, 
    created_on TIMESTAMP DEFAULT NOW(), 
    updated_by BIGINT DEFAULT NULL, 
    updated_on TIMESTAMP DEFAULT NULL,
    x BOOLEAN DEFAULT FALSE) 
RETURNS VOID AS 
$$
BEGIN
    INSERT INTO accounts (
        provider, 
        verified,
        email, 
        first_name, 
        last_name, 
        hashed_password, 
        salt, 
        mobile_phone, 
        last_login,
        created_by, 
        created_on, 
        updated_by, 
        updated_on,
        x) 
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14);
END;
$$ LANGUAGE plpgsql;

