--UPDATE email.
CREATE OR REPLACE FUNCTION accounts_update_email(
    id IN BIGINT,
    email IN VARCHAR(256),
    updated_by BIGINT) 
RETURNS VOID AS 
$$
#variable_conflict use_variable
BEGIN
    UPDATE accounts a
    SET
        email = email,
        updated_by = updated_by,
        updated_on = Now()
    WHERE a.id = id;
END;
$$ LANGUAGE plpgsql;

