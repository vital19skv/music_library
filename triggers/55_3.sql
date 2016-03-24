/*$$IBEC$$ CREATE OR ALTER TRIGGER lab_5_3
FOR ALBUM_SONG
ACTIVE AFTER INSERT
AS
BEGIN
  EXECUTE PROCEDURE sp_update_group_hist ( NEW.SONG_ID );
END $$IBEC$$*/
--set term ^;
create or alter exception S_A_E 'SONG IS ALREADY EXISTS';
CREATE OR ALTER trigger LAB5_3 for ALBUM_SONG
active before insert or update
AS
begin
    IF(NEW.SONG_ID in (select ALBUM_SONG.SONG_ID from ALBUM_SONG
        where ALBUM_SONG.ALBUM_ID = NEW.ALBUM_ID))
    then
    exception S_A_E;
end
--set term ;^

