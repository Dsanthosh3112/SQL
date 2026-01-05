use company_db;
show tables;
-- Aggregate Functions
-- (COUNT • SUM • AVG • MIN • MAX • Tricky Cases)
-- (Online Tech Assessment – Questions Only)
-- 🧩 Level 1 – Basic Aggregate Functions
-- Find the total number of employees.
select count(emp_id) as Number_of_employees from employees;
-- Find the total salary paid to all employees.
select sum(salary) as total_salary from employees;
-- Find the average salary of all employees.
select avg(salary) as average_salary from employees;
-- Find the minimum salary among employees.
select min(salary) as min_salary from employees;
-- Find the maximum salary among employees.
select max(salary) as max_salary from employees;
-- 🧩 Level 2 – Aggregates with Conditions
-- Find the number of active employees.
select count(emp_id) from employees where status = 'active';
-- Find the total salary of employees who belong to department ID 2.
select sum(salary) from employees where dept_id=2;
-- Find the average salary of female employees.
select avg(salary) from employees where gender='female';
-- Find the maximum salary among employees who joined after 2019.
select max(salary) from employees where join_date>'2019-01-01';
-- Find the minimum salary among inactive employees.
select min(salary) from employees where status='inactive';
-- 🧩 Level 3 – Aggregates with DISTINCT
-- Find the number of distinct departments in the employees table.
select distinct count(dept_id) from employees;
-- Find the number of distinct managers.
select distinct count(manager_id) as manager_count from employees;
-- group by

select max(salary) from employees;

select dept_id,max(salary) from employees group by dept_id;

select max(salary) from employees group by gender order by max(salary) asc;

select  max(salary) from employees group by dept_id having max(salary)>50000;
