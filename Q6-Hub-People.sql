-- Emily Van Laarhoven and Ainsley St.Clair

-- returns list of people with area code 617

use evanlaar_db;

select nm
from contacts inner join phone_numbers using (id)
where phnum like "617%";