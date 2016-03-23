create or alter procedure FIVE_FESTS
returns (
    id_fest int,
    uniq_genres_cnt int )
as
begin
  for select first 5 id_fest, count(genre) as uniq_genres from album,
  (select album_id, id_fest from fest_albums, (select id as id_fest from fest)
  where fest_albums.fest_id = id_fest) where album.id = album_id group by id_fest
  order by uniq_genres DESC into :id_fest, :uniq_genres_cnt do
  begin
    suspend;
  end
end