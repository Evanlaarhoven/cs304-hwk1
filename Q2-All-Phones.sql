-- Emily Van Laarhoven and Ainsley St.Clair

-- Returns list of all phone numbers with names

use evanlaar_db;

select nm,kind,phnum
from contacts inner join phone_numbers using (id);