drop database if exists moneytracker;

create database moneytracker;

use moneytracker;

CREATE table user(
	id int primary key auto_increment not null,
	username varchar(50) not null unique,
	password  varchar(20) not null,
	email varchar(80) not null,
	creation_date timestamp default CURRENT_TIMESTAMP()
);

CREATE table category(
	id_category int primary key auto_increment not null,
	name varchar(30) not null,
	color varchar(7) default "#000000",
	user_id int,
	foreign key(user_id) references user(id)
	
);

create table movement(
	id_movement int primary key auto_increment not null,
	amount decimal(10,2) not null,
	description varchar(255) not null,
	type enum('INGRESO', 'GASTO') not null,
	date date not null,
	creation_date timestamp default CURRENT_TIMESTAMP()
);

insert into user values(default, "testuser", "testpass", "test@test.com", default);

select * from user
where id=1;
