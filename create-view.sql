CREATE VIEW rock AS
select * from track where genre_id in (select genre_id from genre where name = 'Rock');

select * from rock;

CREATE VIEW classical_count AS
select count(*) from track where track_id in(
    select track_id from playlist_track where playlist_id in(
        select playlist_id from playlist where name = 'Classical'));