--№1
with t1 as (
select a, 
       row_number () over (order by a), 
       a -  row_number () over (order by a) as Diff
from numbers
)
select min(a) as start, 
       max (a) as end 
from t1
group by Diff
order by start

--№2
--Вывести среднее количество позиций одного вида в заказах с разбивкой по позициям.
with t1 as (
select good_id, sum(coalesce(amount, 1))::numeric/count(*) 
from orders o
group by good_id
)
select * 
from t1
right join goods g
on t1.good_id = g.id

--№3
--Необходимо вывести сотрудников и дни, когда они находились на рабочем месте менее 8 часов.
select employee, date(check_time), max(check_time) - min (check_time) as Diff
from gate
group by employee, date(check_time)
having max(check_time) - min (check_time) < interval '8 hours'
