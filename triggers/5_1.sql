CREATE SEQUENCE GEN_F_ID;
SET TERM ^ ;
CREATE OR ALTER trigger auto_incr_F FOR FEST
ACTIVE BEFORE INSERT POSITION 0
AS
DECLARE VARIABLE new_id INTEGER;
begin
SELECT MAX(id) FROM FEST
INTO :new_id;
NEW.id = :new_id + 1;
end
^
SET TERM ; ^


