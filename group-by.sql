select count(tr.*) , g.name 
from track tr
    join genre g on tr.genre_id = g.genre_id
group by  g.name;


select count(tr.*) , g.name 
from track tr
    join genre g on tr.genre_id = g.genre_id
    where g.name = 'Pop' or g.name = 'Rock'
group by  g.name;


select ar.name, count(al.*)
    from artist ar 
        join album al on ar.artist_id = al.artist_id
group by ar.name;