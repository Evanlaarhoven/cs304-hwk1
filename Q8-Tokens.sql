-- Emily Van Laarhoven and Ainsley St.Clair

-- returns list of people who are only person living in their state

use evanlaar_db;

select nm
from (select nm, st, count(st) as num_inhabitants
from contacts inner join addresses using (id)
where kind="home"
group by st) as total_inhabitants
where total_inhabitants.num_inhabitants=1; 