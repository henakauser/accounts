--UPDATE hashed password and salt.
CREATE OR REPLACE FUNCTION accounts_update_password(
    id INTEGER,
    hashed_password VARCHAR(256), 
    salt VARCHAR(256)) 
RETURNS VOID AS 
$$
BEGIN
    UPDATE accounts a
    SET 
        hashed_password = accounts_update_password.hashed_password, 
        salt = accounts_update_password.salt
    WHERE a.id = accounts_update_password.id AND a.x = false;
END;
$$ LANGUAGE plpgsql;

