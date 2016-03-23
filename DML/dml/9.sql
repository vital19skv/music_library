-- Изменим название фестивалей, чье название начинается на 'zEaTkq'
create procedure UUPDATE_FEST(NAME_s char(20) )
as

begin
  update "FEST"
  set "FEST"."NAME" = 'FEST1'
  where "FEST"."NAME" = 'zEaTkq';
end;

