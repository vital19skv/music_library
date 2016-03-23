-- ¬ыборка данных из одной таблицы при нескольких услови€х, с использованием
-- логических операций, LIKE, BETWEEN, IN

-- ¬ыборка альбомов, которые были выпущены за период с 1980 по 1985 года
--create view ALBUM_DATE_S as select NAME, RELEASE_YEAR from ALBUM where RELEASE_YEAR between '01.01.1980' and '01.01.1985';

-- ¬ыборка фестивалей, которые проход€т в ћоскве
--create view FEST_CITY_Ss as select NAME, CITY  from FEST where city in ('Moscow');

-- ¬ыборка исполнителей, чье им€ начинаетс€ на R
create view ARTIST_NAME_Sss as select NAME  from ARTIST where NAME like 'R%';


