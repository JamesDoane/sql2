select * from invoice where invoice_id in (
    select invoice_id from invoice_line where unit_price > .99
);

select invoice.invoice_date, invoice.total, customer.first_name, customer.last_name
from invoice 
    join customer 
        on invoice.customer_id = customer.customer_id;

select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
    join employee
        on customer.support_rep_id = employee.employee_id;


select al.title, ar.name 
from album al
    join artist ar
        on al.artist_id = ar.artist_id;

      
select pt.track_id
from playlist_track pt
    join playlist pl
        on pl.playlist_id = pt.playlist_id
        where pl.name = 'Music';


select tr.name
from playlist_track pt
    join track tr
        on tr.track_id = pt.track_id;

-- 8
select tr.name, pl.name
from track tr
    join playlist_track pt on tr.track_id = pt.track_id
        join playlist pl on pl.playlist_id = pt.playlist_id;
-- 8


select tr.name, al.title
from album al
    join track tr on al.album_id = tr.album_id  
        join genre g on g.genre_id = tr.genre_id;
  