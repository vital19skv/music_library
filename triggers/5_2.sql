CREATE OR ALTER trigger LAB5_2 for album
active before update or delete position 0
AS
begin
    if (old.id in (select album.id from album)) then
        exception EX_T_error;
end
