--DELETE
CREATE OR REPLACE FUNCTION accounts_delete(
    id INTEGER)
RETURNS VOID AS
$$
BEGIN
    UPDATE accounts 
    SET x = true 
    WHERE accounts.id = $1;
END;
$$ LANGUAGE plpgsql;

