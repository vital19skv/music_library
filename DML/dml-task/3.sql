-- Пример создания вычисляемого поля: количество человек в группах, исполняющих back vocal
create view ARTIST_CNT_SS as select count(ID) as ARTIST_CNT from ARTIST where ROLE = 'vocalist';



