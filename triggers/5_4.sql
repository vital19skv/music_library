/*$$IBEC$$ CREATE OR ALTER TRIGGER lab_5_3
FOR ALBUM_SONG
ACTIVE AFTER INSERT
AS
/*BEGIN
  EXECUTE PROCEDURE sp_update_group_hist ( NEW.SONG_ID );
END $$IBEC$$*/
create or alter trigger LAB5_4 for FEST_SONG after insert
as
--declare variable kolvo int;
begin
--kolvo = 0;
select count(FEST_SONG.SONG_ID) as kolvo from FEST_SONG
    where FEST_SONG.SONG_ID = new.SONG_ID and
        FEST_SONG.FEST_ID = new.FEST_ID
--group by count(FEST_SONG.SONG_ID) into :kolvo;
    if (kolvo > 2)
    then exception S_IN_F;
end

