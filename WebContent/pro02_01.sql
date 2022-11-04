select * from custom;

insert into custom values('kjh','1234','김지훈','김포시','010-1004-1004',now(),0,0,0);
insert into custom values('admin','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','관리자','김포시','010-1004-1004',now(),0,0,0);

delete from custom where cusid = 'admin';
