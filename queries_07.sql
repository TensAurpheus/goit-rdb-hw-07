use mydb;

select id, date, year(date) as year, month(date) as month, day(date) as day 
from orders;

select id, date, date + interval 1 day as date_plus_1d
from orders;

select id, date, unix_timestamp(date) as u_timestamp from orders;

select count(date) from orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

select id, date, json_object('id', id, 'date', date) from orders;