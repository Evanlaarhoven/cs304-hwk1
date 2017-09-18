-- Emily Van Laarhoven and Ainsley St.Clair

-- returns a list of all addresses with contact names

use evanlaar_db;

select nm,kind,city,st
from contacts inner join addresses using (id);