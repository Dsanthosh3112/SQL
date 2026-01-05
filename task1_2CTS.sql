use company_db;
show tables;
-- 	Retrieve all columns from the employees table.
select * from employees;
-- Retrieve employee names and salaries.
Select emp_name,salary from employees;
-- Retrieve all department names.
select  dept_name from departments;
-- 	Retrieve project names along with their start dates.
select project_name,start_date from projects;
-- 	Retrieve employee id and join date. 
select emp_id,join_date from employees;


-- 🧩 Level 2 – Aliases, DISTINCT, Expressions
-- Retrieve employee name and salary using column aliases.
select emp_name as employeeName,salary as monthlySalary from employees;
-- 	Retrieve all unique genders from the employees table.
select distinct gender from employees;
-- 	Retrieve distinct department IDs from employees.
select distinct dept_id from employees;
-- 	Retrieve employee name and their annual salary.
select emp_name as employeeName,(salary*12) as annualSalary from employees;
-- 	Retrieve project name using an alias along with its start date.
select project_name as projectName, start_date as StartDate from projects;


-- 🧩 Level 3 – String Functions (Basic Usage)
-- Retrieve all employee names in uppercase.
select upper(emp_name) from employees;
-- Retrieve employee names along with the length of each name.
select emp_name,length(emp_name) as lengthOfemployeename  from employees;
-- 🧩 Level 4 – Ordering & Limiting Results
-- Retrieve employees ordered by salary in ascending order.
select emp_name,salary from employees order by salary asc;
-- Retrieve employees ordered by salary in descending order.						
select emp_name,salary from employees order by salary desc;
-- Retrieve the top 3 highest-paid employees. 
select emp_name,salary from employees order by salary desc limit 3;
-- 	🧩 Level 5 – Date & NULL Handling
-- Retrieve employees ordered by join date (oldest first).
select emp_name,join_date from employees order by join_date asc;
-- 	Retrieve employees whose email is NULL.
select emp_name,email from employees where email is null;
-- 	Retrieve projects that are still ongoing.
select project_name from projects where end_date is null;
-- 🧩 Level 6 – Multi-column Ordering & DISTINCT
-- Retrieve employees ordered by department ID and salary (highest first).
select emp_name,dept_id,salary from employees order by dept_id,salary desc; 	
-- Retrieve all distinct locations from departments.
select distinct location from departments; 

-- Topic 2: WHERE
-- 🧩 Level 1 – Basic Filtering
-- Retrieve all employees whose salary is greater than 50,000.
select emp_name,salary from employees where salary>50000 order by salary asc;
-- Retrieve employees who belong to department ID 2.
select emp_name,dept_id from employees where dept_id=2;
-- Retrieve employees whose gender is 'Female'.
select emp_name,gender from employees where gender='Female';
-- Retrieve employees who are marked as 'Active'.
select emp_name,status from employees where status='Active';
-- Retrieve employees whose age is less than 30.
select emp_name,age from employees  where age<30;
-- 🧩 Level 2 – Multiple Conditions (AND / OR)
-- Retrieve employees whose salary is greater than 40,000 and belong to department ID 2.
select emp_name,salary,dept_id from employees where salary>40000 and dept_id=2;
-- Retrieve employees who belong to department ID 1 or department ID 3.
select dept_id from employees where dept_id in (2,3);
-- Retrieve employees who are 'Male' and whose salary is greater than 45,000.
select emp_name from employees where gender='male' and salary>45000;
-- Retrieve employees who are 'Active' and whose age is greater than 30.
select * from employees where status='Active' and age>30;
-- Retrieve employees who are either 'Inactive' or have a salary less than 40,000.
select * from employees where status='Inactive' or salary<40000;
-- 🧩 Level 3 – IN, BETWEEN
-- Retrieve employees whose department ID is in (1, 2, 4).
select * from employees where dept_id  in (1,2,4);
-- Retrieve employees whose salary is between 40,000 and 70,000.
select * from employees where salary between 40000 and 70000;
-- Retrieve employees whose age is between 25 and 35.
select * from employees where age between 25 and 35;
-- Retrieve employees who joined between 2018-01-01 and 2020-12-31.
select * from employees where join_date between '2018-01-01' and '2020-12-31';
-- Retrieve projects that started between 2020-01-01 and 2021-12-31.
select * from employees where join_date between '2020-01-01' and '2021-12-31';
-- 🧩 Level 4 – NULL Handling
-- Retrieve employees whose email is NULL.
select * from employees where email is null;
select * from employees;
-- Retrieve employees who do not belong to any department.
select * from employees where dept_id is null; -- here allbelongs to a department so it is shows all the null values
-- Retrieve departments whose location is NULL.
select * from departments where location is null; 
select * from departments;
-- Retrieve projects that are still ongoing.
select * from projects where end_date is null;
-- Retrieve employees whose manager ID is NULL.
select * from employees where manager_id is null;
select * from employees;
-- 🧩 Level 5 – String-Based Filtering
-- Retrieve employees whose name starts with 'A'.
select * from employees where emp_name like 'A%';
-- Retrieve employees whose name ends with 'a'.
select * from employees where emp_name like '%a';
-- Retrieve employees whose name contains 'ar'.
select * from employees where emp_name like '%ar%';
-- Retrieve employees whose email contains '@corp.com'.
select * from employees where email like '%@corp.com%';
-- Retrieve employees whose role contains the word 'Lead'.
select * from emp_projects where role like '%Lead%';
-- 🧩 Level 6 – NOT, !=, Complex Conditions
-- Retrieve employees who are not 'Active'.
select * from employees where status!='Active';
-- Retrieve employees whose gender is not 'Male'.
select * from employees where gender!='Male';
-- Retrieve employees who do not belong to department ID 2.
select * from employees where dept_id!=2;
-- Retrieve employees whose salary is not between 40,000 and 80,000.
select * from employees where salary not between 40000 and 80000;
-- Retrieve employees who are 'Active' but do not have an email.
select * from employees where status='Active' and email is null;
-- 🧩 Level 7 – Assessment Traps (Precedence & Mixed Logic)
-- Retrieve employees who are 'Female' and either 'Active' or have a salary greater than 60,000.
select * from employees where gender='Female' and (status='Active' or salary>60000); 
-- Retrieve employees who joined after 2019 and belong to department ID 3.
select * from employees where dept_id=2 and  join_date>'2019-01-01';
select * from employees;
-- Retrieve employees who are either 'Male' or belong to department ID 4, and are 'Active'.
select * from employees where (gender='Male' or dept_id=4) and status='Active'; 
-- Retrieve employees whose salary is greater than 50,000 and who joined before 2019.
select * from employees where salary>50000 and join_date<'2019-12-31';
-- select* from employee;
-- Retrieve employees who are not assigned to any project.
select * from employees;
