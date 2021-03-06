CREATE OR ALTER VIEW SR_COMPOSE_IN_ALBUM(
    ARTISTS,
    MIDDLE_VALUE)
AS
SELECT
  ARTIST.NAME AS ARTISTS,
  SUM(ALBUM.QUANTITY_OF_SONGS) / COUNT(ALBUM.QUANTITY_OF_SONGS)
   AS MIDDLE_VALUE
FROM
  ARTIST,
  ALBUM
WHERE
      ARTIST.ID = ALBUM.ARTIST_ID
  AND ALBUM.QUANTITY_OF_SONGS > 11
GROUP BY ARTISTS
ORDER BY MIDDLE_VALUE DESC;


