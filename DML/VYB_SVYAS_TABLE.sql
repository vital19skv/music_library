-- Выборка всех по альбомам и исполнителям
create view ALBUM_MEMBER_S as select ALBUM.NAME, GROUP_MEMBER.NAME from ALBUM,GROUP_MEMBER, ALBUM_GROUP_MEMBER where ALBUM.ID=ALBUM_GROUP_MEMBER .ALBUM_ID AND ALBUM_GROUP_MEMBER.GROUP_MEMBER_ID=GROUP_MEMBER.ID;

-- Выборка всех альбомов, которые были изданы в виде дисков в определенный период
create view DISC_S as select ALBUM.name, DISC.name, DISC.YEAR_OF_RELEASE from ALBUM, DISC, ALBUM_DISC where ALBUM_DISC.ALBUM_ID=ALBUM.ID AND  ALBUM_DISC.DISC_ID=DISC.ID AND DISC.YEAR_OF_RELEASE between ('01.01.1990' and '01.01.2000') ;


