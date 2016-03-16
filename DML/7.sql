-- Выборка всех альбомов, которые участвуют в некотором фестивале
create view ALBUMS_FEST_S as select NAME as album from ALBUM where id in
(select ALBUM_ID from FEST_ALBUMS where FEST_ID = 3 );


