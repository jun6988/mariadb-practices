drop table member;
create table member(
	no int(11) not null auto_increment,
    email varchar(100) not null,
    password varchar(64) not null,
    name varchar(100) not null,
    department varchar(100),
    primary key(no)
);

-- 스키마 확인
desc member;

-- 추가
alter table member add column juminbunho char(13) not null;
desc member;

-- 삭제
alter table member drop juminbunho;
desc member;

-- 위치 변경
alter table member add column juminbunho char(13) not null after email;
desc member;

-- 이름 수정
alter table member change department department varchar(200) not null;
desc member;

-- 연습
alter table member add self_intro text;
desc member;

alter table member drop juminbunho;
desc member;


-- insert
insert
	into member
values (null, 'jun6988@naver.com', password('1234'), '이성준', '개발팀', null);
select * from member;

insert
	into member(no, email, name, password, department)
values (null, 'jun69882@naver.com', '이성준2', password('1234'), '개발팀');
select * from member;

-- upadate
update member
	set email='jun69883@naver.com', password=password('4321')
where no = 2;
select * from member;

-- delete
delete
	from member
where no = 2;
select * from member;

-- transaction
select @@autocommit;
set autocommit=0;

insert
	into member(no, email, name, password, department)
values (null, 'jun6988@naver.com', '이성준5', password('1234'), '개발팀', null);

commit;

select * from member;
