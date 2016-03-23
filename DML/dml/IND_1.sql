create view TOP_ARTIST_S as
select first 10
  "GROUPS"."NAME" as ARTISTS_IN_FEST,
  count ("ALBUM"."ID") as TIMES
from
  "GROUPS",
  "ALBUM",
  "FEST_ALBUMS",
  "FEST"
where
      "GROUPS"."ID" = "ALBUM"."GROUPS_ID"
  AND "ALBUM"."ID" = "FEST_ALBUMS"."ALBUM_ID"
  AND "FEST_ALBUMS"."FEST_ID" = "FEST"."ID"
  AND "FEST"."DATE_OF_OCCURANCE" BETWEEN '01.01.1980' AND '01.01.2014'
group by "GROUPS"."NAME"
order by count ("ALBUM"."ID") desc;

