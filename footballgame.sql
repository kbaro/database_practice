drop database if exists footballgame;
create database footballgame;
use footballgame;

create table match(
	id 			int not null primary key auto_increment,
	date		datetime not null,
	location	varchar(50) not null,
	time 		varchar(50) not null
); 

create table team(
	id 			int not null primary key auto_increment,
	name 		varchar(50) not null
);

create table meeting(
	id 			int not null primary key auto_increment,
	team 		int not null,
	game 		int not null
);

create table player(
	id 			int not null primary key auto_increment,
	name 		varchar(50) not null,
	surname 	varchar(50) not null,
	team 		int not null,
	age 		int not null,
	number		varchar(10) not null,
	position 	varchar(20) not null
);

create table goal(
	id 			int not null primary key auto_increment,
	minute 		int not null,
	game 		int not null,
	player 		int not null
);

alter table meeting add foreign key (match) references match(id);
alter table meeting add foreign key (team) references team(id);

alter table goal add foreign key (match) references match(id);

alter table player add foreign key (team) references team(id);


