-- Emily Van Laarhoven and Ainsley St.Clair

-- List of people who have address in MA and in CA

use evanlaar_db;

select nm
from contacts inner join
(select t1.id
	from (select id,city,st from addresses where st="MA") as t1,
     	(select id,city,st from addresses where st="CA") as t2
     	where t1.id=t2.id) as BiCoastalIds
using (id);
