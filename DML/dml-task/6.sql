-- ѕодсчет всех исполнителей по городам 
create view ARTIST_CITY_S as select CITY as city, count(ID) as ARTIST_CNT from ARTIST group by CITY;


