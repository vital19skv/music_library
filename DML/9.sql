-- Изменим город проведения фестивалей, чье название начинается на 'Fest2' 
create procedure UPDATE_FEST(city_s char(20) )
as
begin
  update FEST
  set FEST.CITY = :CITY_S
      where (FEST.NAME like 'Fest2%');
end;


