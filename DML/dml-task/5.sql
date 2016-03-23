-- Выборка всех по альбомам и песням
--create view F_S as select FEST.NAME, SONG.NAME from FEST,SONG,FEST_SONG where FEST.ID=FEST_SONG.FEST_ID AND FEST_SONG.SONG_ID=SONG.ID;

-- Выборка всех альбомов, которые были изданы в виде дисков в определенный период
--create view DISC_S as select ALBUM.name, DISC.name, DISC.YEAR_OF_RELEASE from ALBUM, DISC, ALBUM_DISC where ALBUM_DISC.ALBUM_ID=ALBUM.ID AND  ALBUM_DISC.DISC_ID=DISC.ID AND DISC.YEAR_OF_RELEASE between ('01.01.1990' and '01.01.2000') ;

-- Выборка всех альбомов, которые были изданы в виде дисков в определенный период
create view DISC_S as select ALBUM.name, DISC.name, DISC.YEAR_OF_RELEASE from ALBUM, DISC, ALBUM_DISC where ALBUM_DISC.ALBUM_ID=ALBUM.ID AND  ALBUM_DISC.DISC_ID=DISC.ID AND DISC.YEAR_OF_RELEASE between ('01.01.1990' and '01.01.2000') ;

