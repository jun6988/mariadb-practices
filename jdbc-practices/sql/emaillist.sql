-- emaillist sql 연습

-- insert
insert into emaillist values(null, '이', '성준', 'jun6988@naver.com');
insert into emaillist values(null, '둘', '리', 'doolly@gamil.com');

-- select
select first_name, last_name, eamil from eamillist order by no desc;

-- delete(by email)
delete from emaillist where email = 'jun6988@naver.com';

desc emaillist;

select * from dept;

insert 
	into dept 
values(null, '디자인');

delete 
	from dpt
where no = 8;

update dept
	set name = '전략기획'
where no = 4;