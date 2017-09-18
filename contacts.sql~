-- Emily Van Laarhoven and Ainsley St.Clair

use evanlaar_db;

drop table if exists addresses;
drop table if exists phone_numbers;
drop table if exists contacts;

create table contacts (
       id integer primary key,
       nm varchar(25)
       )
       ENGINE = InnoDB;

create table addresses (
       id integer,
       kind varchar(25),
       city varchar(25),
       st char(2),
       INDEX(id),
       foreign key (id) references contacts(id) on delete restrict
       )
       ENGINE = InnoDB;

create table phone_numbers (
       id integer,
       kind varchar(25),
       phnum char(10),
       INDEX(id),
       foreign key (id) references contacts(id) on delete restrict
       )
       ENGINE = InnoDB;