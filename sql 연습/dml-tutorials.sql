-- 대소문자 구분 없음
select version(), current_date;

-- 함수 및 수식
select sin(pi()/4), (4+1)*5;

select version(); select now();

-- 테이블 만들기 (DDL)
create table pet(
	name varchar(20),
    owner varchar(20),
    species varchar(20),
    gender char(1),
    birth date, 
    death date
);
    
 -- 스키마 확인
 desc pet;
 
 -- 조회
 select name, owner, species, gender, birth, death from pet;
 
 -- 데이터 row 넣기(생성, create)
 insert
	into pet
value ('성탄이', '안대혁', 'dog', 'm', '2018-12-25', null);

-- 데이터 삭제(삭제, Delete)
delete
	from pet 
where name='성탄이';

-- load data local file
load data local infile 'c:\\pet.txt' into table pet;
 