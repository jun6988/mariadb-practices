-- 대소문자 구분 없음
select version(), current_date;

-- 함수 및 수식
select sin(pi()/4), (4+1)*5;

select version(); select now();

-- 테이블 삭제
drop table pet;

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
 
 -- update(수정, Update) death
 update pet 
	set death = null 
  where name != 'Bowser';
  
-- 조회1: where

-- 1990년 이후에 태어난 아이들은?(출력: 이름, 종, 생일)
 select name, species, birth
	from pet
where birth > '1990-12-31';

-- Gwen과 함께 사는 아이들은?(출력: 이름, 종, 집사)
select name, species, owner
	from pet
where owner = 'Gwen';

-- null 다루기1 : 현재 살아있는 아이들은?(이름, 생일, 사망일)
select name, birth, death
	from pet
where death is null;

-- null 다루기2 : 사망한 아이들은?(이름, 생일, 사망일)
select name, birth, death
	from pet
where death is not null;

-- like 검색1(패턴매칭): 이름이 b로 시작하는 아이들은?(이름)
select name
	from pet
where name like 'b%';

-- like 검색2(패턴매칭): 이름이 b로 시작하는 아이들 중에 이름이 6자인 아이는?
select name
	from pet
where name like 'b_____';

-- 정렬(order by)
-- 아이들을 어린 순으로 출려하세요(이름, 생일)
select name, birth
	from pet
order by birth desc;

-- 아이들을 나이가 많은 순으로 출려하세요(이름, 생일)
select name, birth
	from pet
order by birth asc;

-- 집계(통계) 함수
select count(*) from pet;

select count(death) from pet;
select count(*) from pet where death is not null;

