-- Emily Van Laarhoven and Ainsley St.Clair

-- return count of how many phones each person has

use evanlaar_db;

select contacts.nm, count(phone_numbers.id) as num_of_phones
from phone_numbers inner join contacts using (id)
group by id;