drop database if exists restaurant;
create database restaurant;
use restaurant;

create table restaurant(
id int					not null primary key auto_increment,
menu varchar(50)		not null,
location varchar(50)	not null
);

create table category(
id int					not null primary key auto_increment,
restaurant int			not null
);

create table food(
id int					not null primary key auto_increment,
category int			not null,
price decimal(8,2)		not null
);

create table food_drink(
food int				not null,
drink int				not null
);

create table drink(
id int					not null primary key auto_increment,
price decimal(8,2)		not null
);

alter table category add foreign key (restaurant) references restaurant(id);
alter table food add foreign key (category) references category(id);
alter table food_drink add foreign key (food) references food(id);
alter table food_drink add foreign key (drink) references drink(id);