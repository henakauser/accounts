--UPDATE email.
CREATE OR REPLACE FUNCTION accounts_update_email(
    id IN INTEGER,
    email IN VARCHAR(256)) 
RETURNS VOID AS 
$$
#variable_conflict use_variable
BEGIN
    UPDATE accounts a
    SET
        email = email
    WHERE a.id = id AND a.x = false;
END;
$$ LANGUAGE plpgsql;

