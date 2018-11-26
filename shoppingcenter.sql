drop database if exists shoppingcenter;
create database shoppingenter;
use shoppingcenter;

create table shoppingcenter(
 	id int					not null primary key auto_increment,
	location varchar(50)	not null
);

create table store(
 	id int					not null primary key auto_increment,
	shoppingcenter int		not null
); 

create table store_person(
	store int				not null,
	person int				not null
);

create table boss(
 	id int					not null primary key auto_increment,
	contact int				not null,
	boss int				not null
);

create table person(
 	id int					not null primary key auto_increment,
	boss int				not null,
	contact int				not null
);

alter table store add foreign key (shoppingcenter) references shoppingcenter(id);
alter table store_person add foreign key (store) references store(id);
alter table store_person add foreign key (person) references person(id);
alter table person add foreign key (boss) references boss(id);
alter table boss add foreign key (boss) references boss(id);
