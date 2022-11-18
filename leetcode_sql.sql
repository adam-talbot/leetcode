-- 1407. Top Travellers
-- Write an SQL query to report the distance traveled by each user.
select name, if(sum(distance) is not null, sum(distance), 0) as travelled_distance
from users as u
left join rides as r on u.id = r.user_id
group by name, user_id
order by travelled_distance desc, name;