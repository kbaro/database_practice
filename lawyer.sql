drop database if exists lawyer;
create database lawyer;
use lawyer;

create table lawyer(
 	id int					not null primary key auto_increment,
	contact int				not null,
	price decimal(8,2)		not null
);

create table defense(
 	id int					not null primary key auto_increment,
	lawyer int				not null,
	duration datetime		not null
);

create table defense_client(
	defense int				not null,
	client int				not null
);

create table client(
 	id int					not null primary key auto_increment,
	contact int				not null
);

create table defense_associate(
	defense int				not null,
	associate int			not null
);

create table associate(
 	id int					not null primary key auto_increment,
	experience varchar(50)	not null,
	contact int				not null
);

alter table defense add foreign key (lawyer) references lawyer(id);
alter table defense_client add foreign key (defense) references defense(id);
alter table defense_client add foreign key (client) references client(id);
alter table defense_associate add foreign key (defense) references defense(id);
alter table defense_associate add foreign key (associate) references associate(id);
