-- 서브쿼리(SUBQUERY) SQL 문제입니다.

-- 문제1.
-- 현재 평균 연봉보다 많은 월급을 받는 직원은 몇 명이나 있습니까?
select count(b.first_name) as 직원수
	from salaries a, employees b
where a.emp_no = b.emp_no
	and a.to_date = '9999-01-01'
    and a.salary > (select avg(salary)
						from salaries
					where a.to_date ='9999-01-01');

-- 문제2. 
-- 현재, 각 부서별로 최고의 급여를 받는 사원의 사번, 이름, 부서 연봉을 조회하세요. 단 조회결과는 연봉의 내림차순으로 정렬되어 나타나야 합니다. 
select b.emp_no, b.last_name, c.title, d.salary
	from departments a, employees b, titles c, salaries d, dept_emp e
where b.emp_no = c.emp_no
	and b.emp_no = d.emp_no
    and b.emp_no = e.emp_no
    and c.emp_no = d.emp_no
    and c.emp_no = e.emp_no
    and d.emp_no = e.emp_no
    and c.to_date = '9999-01-01'
    and d.to_date = '9999-01-01'
    and e.to_date = '9999-01-01'
	and (a.dept_no, d.salary) in (select a.dept_no, max(b.salary)
										from dept_emp a, salaries b -- departments와 salaries 접점이 없으므로 dept_emp
									where a.emp_no = b.emp_no
										and a.to_date = '9999-01-01'
                                        and b.to_date = '9999-01-01'
									group by a.dept_no)
	order by salary desc;

-- 문제3.
-- 현재, 자신의 부서 평균 급여보다 연봉(salary)이 많은 사원의 사번, 이름과 연봉을 조회하세요 
select a.emp_no, a.first_name, b.salary
	from employees a, salaries b, departments c, dept_emp d
where a.emp_no = b.emp_no
	and a.emp_no = d.emp_no
    and b.emp_no = d.emp_no
    and c.dept_no = d.dept_no
    and b.to_date = '9999-01-01'
    and d.to_date = '9999-01-01'
group by c.dept_name
	having avg_salary = (select a.avg_salary
							from (select dept_name, avg(b.salary) as avg 
                            
                            )

								

-- 자신의 부서 평균 급여
select a.dept_name, avg(b.salary)
	from departments a, salaries b, dept_emp c
where b.emp_no = c.emp_no
	and b.to_date = '9999-01-01'
    and c.to_date = '9999-01-01'
group by a.dept_no

-- test
    and (a.dept_name, b.salary) in (select a.dept_name, avg(b.salary)
										from departments a, salaries b, dept_emp c
									where b.emp_no = c.emp_no
										and a.dept_no = c.dept_no
										and b.to_date = '9999-01-01'
										and c.to_date = '9999-01-01'
									group by a.dept_name);


-- 문제4.
-- 현재, 사원들의 사번, 이름, 매니저 이름, 부서 이름으로 출력해 보세요.




-- 문제5.
-- 현재, 평균연봉이 가장 높은 부서의 사원들의 사번, 이름, 직책, 연봉을 조회하고 연봉 순으로 출력하세요.
select b.emp_no, b.first_name, c.title, d.salary
	from departments a, employees b, titles c, salaries d, dept_emp e
where b.emp_no = c.emp_no
	and b.emp_no = d.emp_no
    and b.emp_no = e.emp_no
    and c.emp_no = d.emp_no
    and c.emp_no = e.emp_no
    and d.emp_no = e.emp_no
    and c.to_date = '9999-01-01'
    and d.to_date = '9999-01-01'
    and e.to_date = '9999-01-01'
	and avg_salary = 




-- 문제6.
-- 평균 연봉이 가장 높은 부서는? 

-- 문제7.
-- 평균 연봉이 가장 높은 직책?

-- 문제8.
-- 현재 자신의 매니저보다 높은 연봉을 받고 있는 직원은?
-- 부서이름, 사원이름, 연봉, 매니저 이름, 메니저 연봉 순으로 출력합니다.