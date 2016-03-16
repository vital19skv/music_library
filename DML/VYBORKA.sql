-- ¬ыборка всех данных из каждой таблицы 
create view ALBUM_S as select * from ALBUM;
create view ALBUM_DISC_S as select * from ALBUM_DISK;
create view DISC_S as select * from DISC;
create view ALBUM_TYPE_S as select * from ALBUM_TYPE;
create view FEST_ALBUMS_S as select * from FEST_ALBUMS;
create view ALBUM_SONG_S as select * from ALBUM_SONG;
create view GROUP_MEMBER_S as select * from GROUP_MEMBER;
create view ALBUM_GROUP_MEMBER_S as select * from ALBUM_GROUP_MEMBER;
create view FEST_SONG_S as select * from FEST_SONG;
create view FEST_S as select * from FEST;
create view SONG_S as select * from SONG;


