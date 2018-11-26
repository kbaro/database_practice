drop database if exists museum;
create database museum;
use museum;

create table museum(
	id int					not null primary key auto_increment,
	location varchar(50)	not null,
	owner varchar(50)		not null
);

create table exhibition(
	id int					not null primary key auto_increment,
	museum int				not null,
	curator int				not null,
	sponsor varchar(50)		not null
);

create table piece(
	id int					not null primary key auto_increment,
	exhibition int			not null,
	artist varchar(50)		not null,
	madeyear int			not null,
	topic varchar(50)		not null
);

create table curator(
	id int					not null primary key auto_increment,
	contact int				not null
);

alter table exhibition add foreign key (museum) references museum(id);
alter table exhibition add foreign key (curator) references curator(id);
alter table piece add foreign key (exhibition) references exhibition(id);
