-- Emily Van Laarhoven
-- hw1, add 5 entries to the wmdb

use wmdb;

select person.nm,person.name,person.birthdate,person.addedby
from person where addedby=1261;

select movie.tt,movie.title,movie.release,movie.director,movie.addedby
from movie where addedby=1261;