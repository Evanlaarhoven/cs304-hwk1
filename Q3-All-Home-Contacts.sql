-- Emily Van Laarhoven and Ainsley St.Clair

-- Return list of all people with home address and home phone

use evanlaar_db;

select nm,city,st,phnum
from phone_numbers, (select id,nm,kind,city,st
from contacts inner join addresses using (id)
where kind="home") as t1
where t1.id=phone_numbers.id and  phone_numbers.kind="home";

