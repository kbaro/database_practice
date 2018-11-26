drop database if exists ambulance;
create database ambulance;
use ambulance;

create table ambulance(
	id int					not null primary key auto_increment,
	doctor int				not null,
	location varchar(50)	not null
);

create table doctor(
	id int					not null primary key auto_increment,
	contact int				not null,
	title varchar(50)		not null
);

create table treatment(
	id int					not null primary key auto_increment,
	doctor int				not null,
	duration datetime		not null
);

create table treatment_patient(
	treatment int			not null,
	patient int				not null
);

create table nurse(
	id int					not null primary key auto_increment,
	contact int				not null,
	title varchar(50)		not null
);

create table nurse_treatment(
	treatment int			not null,
	nurse int				not null
);

create table patient(
	id int					not null primary key auto_increment,
	contact int				not null,
	description varchar(50)	not null
);

alter table ambulance add foreign key (doctor) references doctor(id);
alter table treatment add foreign key (doctor) references doctor(id);
alter table treatment_patient add foreign key (patient) references patient(id);
alter table treatment_patient add foreign key (treatment) references treatment(id);
alter table nurse_treatment add foreign key (nurse) references nurse(id);
alter table nurse_treatment add foreign key (treatment) references treatment(id);
