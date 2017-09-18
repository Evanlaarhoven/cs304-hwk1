-- Emily Van Laarhoven

-- returns list of all actors with title and release date 
-- of all movies they appear in

use wmdb;

select t1.name,movie.title,movie.release
from movie inner join 
(select credit.tt,credit.nm,person.name
from credit inner join person using (nm)) as t1
on t1.tt=movie.tt
order by t1.name,movie.release,movie.title;