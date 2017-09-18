-- Emily Van Laarhoven and Ainsley St.Clair

-- returns list of people who live in NE

use evanlaar_db;

select nm as NewEnglanders
from contacts inner join addresses using (id)
where addresses.kind="home" and
      (addresses.st="MA" or addresses.st="CT" or addresses.st="VT" 
      or addresses.st="NH" or addresses.st="ME" or addresses.st="RI");