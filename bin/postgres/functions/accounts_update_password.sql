--UPDATE hashed password and salt.
CREATE OR REPLACE FUNCTION accounts_update_password(
    id BIGINT,
    hashed_password VARCHAR(256), 
    salt VARCHAR(256),
    updated_by BIGINT) 
RETURNS VOID AS 
$$
BEGIN
    UPDATE accounts a
    SET 
        hashed_password = accounts_update_password.hashed_password, 
        salt = accounts_update_password.salt,
        updated_by = accounts_update_password.updated_by,
        updated_on = Now()
    WHERE a.id = accounts_update_password.id;
END;
$$ LANGUAGE plpgsql;

