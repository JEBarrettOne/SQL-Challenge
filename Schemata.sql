drop table employees CASCADE;
drop table dempartments CASCADE;
drop table salaries CASCADE;
drop table dept_emp CASCADE;
drop table dept_managers CASCADE;

create table employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(20),
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)

);

create table departments(
	dept_no VARCHAR(20),
	dept_name VARCHAR(20) NOT NULL, 
	PRIMARY KEY (dept_no)

);

create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

create table dept_managers(
	dept_no VARCHAR (10),
 	emp_no INT NOT NULL,
 	from_date DATE NOT NULL,
 	to_date DATE NOT NULL,
 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table salaries(
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

);