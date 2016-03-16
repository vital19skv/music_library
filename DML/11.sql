-- Удалим те фестивали, в которых не заявлено на участие ни одной композиции
create procedure DEL_FEST
as
begin
   delete from FEST
   where ID not in (select FEST_ID from FEST_ALBUMS) and not in (select FEST_ID from FEST_SONG);
end;


