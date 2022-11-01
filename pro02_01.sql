create database myshop;
commit;
use myshop1;
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
create table custom(cusId varchar(13) primary key not null,  cusPw varchar(200) not null,     cusName varchar(50) not null,     address varchar(500) not null,     tel varchar(14) not null,     regDate date default now(),     point int default 0,     level int default 0,     visited int default 0 )
