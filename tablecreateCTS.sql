create database company_db;
use company_db;
create table departments(
	dept_id int primary key,
    dept_name varchar(50),
    location varchar(50)
    );
insert into departments values
	(1,'HR','Chennai'),
    (2, 'IT', 'Bangalore'),
	(3, 'Finance', 'Mumbai'),
	(4, 'Sales', 'Delhi');
select * from departments;
	CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
	age INT,
	gender VARCHAR(10),
	salary INT,
	dept_id INT,
	manager_id INT,
	join_date DATE,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
	);
	INSERT INTO employees VALUES			
	(101, 'Arun', 28, 'Male', 45000, 1, NULL, '2019-06-10'),			
	(102, 'Priya', 32, 'Female', 60000, 2, 105, '2018-03-15'),			
	(103, 'Rahul', 25, 'Male', 35000, 2, 105, '2020-01-20'),			
	(104, 'Sneha', 29, 'Female', 48000, 3, 106, '2019-11-05'),			
	(105, 'Karthik', 40, 'Male', 90000, 2, NULL, '2015-07-01'),			
	(106, 'Meena', 38, 'Female', 85000, 3, NULL, '2016-08-12'),			
	(107, 'Vikram', 26, 'Male', 42000, 4, 108, '2021-02-10'),			
	(108, 'Anita', 35, 'Female', 70000, 4, NULL, '2017-05-25');			
select * from employees;		

CREATE TABLE projects (
	project_id INT PRIMARY KEY,
	project_name VARCHAR(50),
	dept_id INT,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
	);	
	
INSERT INTO projects VALUES	
	(201, 'Payroll System', 1, '2021-01-01', '2021-06-30'),	
	(202, 'E-Commerce App', 2, '2020-09-01', '2021-12-31'),	
	(203, 'Budget Analysis', 3, '2019-04-01', '2020-03-31'),	
	(204, 'CRM Tool', 4, '2021-05-01', NULL);	
select * from projects;

CREATE TABLE emp_projects (
emp_id INT,
project_id INT,
role VARCHAR(30),
PRIMARY KEY (emp_id, project_id),
FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO emp_projects VALUES
(101, 201, 'HR Executive'),
(102, 202, 'Developer'),
(103, 202, 'Tester'),
(104, 203, 'Analyst'),
(105, 202, 'Team Lead'),
(106, 203, 'Finance Lead'),
(107, 204, 'Sales Rep'),
(108, 204, 'Sales Manager');
	
ALTER TABLE employees
	ADD email VARCHAR(100),
	ADD status VARCHAR(15);
    
    
UPDATE employees
	SET email = 'arun@corp.com',
	status = 'Active'
	WHERE emp_id = 101;

UPDATE employees
	SET email = 'priya@corp.com',
	status = 'Active'
	WHERE emp_id = 102;

UPDATE employees
	SET email = 'rahul@corp.com',
	status = 'Inactive'
	WHERE emp_id = 103;

UPDATE employees
	SET email = 'sneha@corp.com',
	status = 'Active'
	WHERE emp_id = 104;

UPDATE employees
	SET email = 'karthik@corp.com',
	status = 'Active'
	WHERE emp_id = 105;

UPDATE employees
	SET email = 'meena@corp.com',
	status = 'Active'
	WHERE emp_id = 106;

UPDATE employees
	SET email = NULL,
	status = 'Active'
	WHERE emp_id = 107;

UPDATE employees
	SET email = 'anita@corp.com',
	status = 'Inactive'
	WHERE emp_id = 108;

	