show tables;
show databases;
set foreign_key_checks = 0;
truncate member;
truncate category;
truncate book;
truncate cart;
truncate orders_book;

-- insert member
insert into member values(null, '이성준', '01020937085', 'jun6988@naver.com', '123123');
insert into member values(null, '고길동', '01012345678', 'gildong@naver.com', '456789');
select * from member;

-- select
select name, phone_number, email, password from member order by no desc;

-- insert category
insert into category values(null, '소설');
insert into category values(null, '수필');
insert into category values(null, '예술');
select * from category;

-- insert book
insert into book values(null, 1, '어린왕자', 20000);
insert into book values(null, 2, '데미안', 40000);
insert into book values(null, 3, '성냥팔이소녀', 30000);
select * from book;

-- insert cart
insert into cart values(1, 1, 1);
insert into cart values(2, 2, 2);
select * from cart;

-- insert orders
insert into orders values(null, 1, '어린왕자', 20000, '서울시 동대문구', 1);
select * from orders;

-- insert orders_book
insert into orders_book values(1, 1, 1);
insert into orders_book values(2, 2, 2);
select * from orders_book