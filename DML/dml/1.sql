-- ¬ыборка всех данных из каждой таблицы 
create view ALBUM_S as select * from ALBUM;
create view ALBUM_SONG_S as select * from ALBUM_SONG;
create view ARTIST_S as select * from ARTIST;
create view DISC_S as select * from DISC;
create view FEST_S as select * from FEST;
create view FEST_ALBUMS_S as select * from FEST_ALBUMS;
create view FEST_SONG_S as select * from FEST_SONG;
create view GROUPS_S as select * from GROUPS;
create view SONG_S as select * from SONG;
create view TYPE_S as select * from TYPE;

