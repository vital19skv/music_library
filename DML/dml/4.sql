-- Выбираем все альбомы, сортируем по дате выпуска, названию и жанру
create view ALBUM_SORT_S as select * from ALBUM order by RELEASE_YEAR desc, NAME, GENRE ;


