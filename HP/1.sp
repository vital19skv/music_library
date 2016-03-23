create or alter procedure FIVE_ARTS (
    date_st date, 
    date_end date)
returns (
    art_id int,
    perfomance float)
as
declare variable TMP0 integer = 0;
declare variable mnt_ttl integer = 0;
declare variable sng_amount integer = 0;
declare variable TMP1 date;
declare variable TMP2 date;
begin
    mnt_ttl = datediff(MONTH, date_st, date_end);

        for select first 5 author_id, COUNT(id) as amount from song where cr_date
        between :date_st and :date_end group by author_id ORDER by amount desc into
        :art_id, :sng_amount do
            begin
                perfomance = CAST(sng_amount AS float) / CAST(mnt_ttl AS float);
                suspend;
            end


end