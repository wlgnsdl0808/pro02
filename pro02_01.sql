create database myshop;
commit;
use myshop;
create table custom(cusId varchar(13) primary key not null,
	cusPw varchar(200) not null,
    cusName varchar(50) not null,
    address varchar(500) not null,
    tel varchar(14) not null,
    regDate date default now(),
    point int default 0,
    level int default 0,
    visited int default 0
);

create table notice(
	notiNo int primary key auto_increment,
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resDate datetime default now()
);

create table sales(
	saleNo int primary key auto_increment, 
	cusId varchar(12) not null,
	proNo varchar(50) not null,	
	amount int not null,	
	saleDate date default now(),
	parselNo int ,	
	salePayNo int
);

create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

insert into category(cateName) values ("SKIN");
insert into category(cateName) values ("LOTION");
insert into category(cateName) values ("OIL");
insert into category(cateName) values ("ESSENCE");

select * from category;
commit;

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);

commit;

select * from product;


create table sales(
	saleNo int primary key auto_increment, 
	cusId varchar(12) not null,
	proNo varchar(50) not null,	
	amount int not null,	
	saleDate date default now(),
	parselNo int ,
	salePayNo int
);

