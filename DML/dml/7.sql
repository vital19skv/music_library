-- Добавим запись в таблицу альбомов
create procedure INSERT_ALBUM ('id' int NOT NULL, 'name' char(20) NOT NULL, 'type_id' int NOT NULL, 'arist_name' char(50) NOT NULL, 'genre' char(20) NOT NULL, 'RELEASE_DATE' DATE NOT NULL, 'group_id' int NOT NULL, 'artist_id' int NOT NULL, PRIMARY KEY ('id') )
as
begin
    insert into ALBUM (ID, NAME, TYPE_ID, ARIST_NAME, GENRE, RELEASE_DATE, GROUP_ID, ARTIST_ID)
    values (:ID, :NAME, :TYPE_ID, :ARIST_NAME,  :GENRE, :RELEASE_DATE, :GROUP_ID, :ARTIST_ID);
end;



