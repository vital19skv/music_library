-- Удалим альбом, в котором количество песен превышает заданное число
create procedure delete_game(cnt integer)
as
begin
   delete from ALBUM
   where ID in (select ALBUM. ID,CNT(SONG.ID) as song_cnt  from ALBUM, SONG, ALBUM_SONG  where
 ALBUM.ID = ALBUM_SONG. ALBUM_ID AND ALBUM_SONG.SONG_ID = SONG.ID AND song_cnt>:CNT);
end;


