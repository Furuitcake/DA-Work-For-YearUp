select GeoID, sum(amount), avg(amount), sum(Boxes)
from sales
group by GeoID;

select g.geo, sum(amount), avg(amount), sum(Boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.geo;

select pr.Category, p.Team, sum(boxes), sum(amount)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
group by pr.Category, p.Team;


select pr.Category, p.Team, sum(boxes), sum(amount)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where p.Team <> ''
group by pr.Category, p.Team
order by pr.Category, p.Team;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc;


select pr.Product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10;