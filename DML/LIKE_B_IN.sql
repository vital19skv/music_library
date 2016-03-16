-- ¬ыборка данных из одной таблицы при нескольких услови€х, с использованием
-- логических операций, LIKE, BETWEEN, IN

-- ¬ыборка альбомов, которые были выпущены за период с 1983 по 1985 года
create view ALBUM_YEAR_S as select NAME, YEAR_OF_RELEASE from ALBUM where YEAR_OF_RELEASE between '1983' and '1985';

-- ¬ыборка фестивалей, которые проход€т в ћоскве или ¬олгограде
create view FEST_CITY_Ss as select NAME, CITY  from FEST where city in ('Moscow', 'Volgograd');

-- ¬ыборка исполнителей, чье им€ начинаетс€ на Kirk
create view ARTIST_NAME_S as select NAME  from group_member where NAME like 'Kirk%';


