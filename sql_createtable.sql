--create tables and import data
CREATE TABLE employees (
emp_no INT NOT NULL,
birth_date DATE   NOT NULL,
first_name VARCHAR   NOT NULL,
last_name VARCHAR   NOT NULL,
gender CHAR(1)  NOT NULL,
hire_date DATE   NOT NULL,
PRIMARY KEY (emp_no)
);

SELECT * FROM employees;


CREATE TABLE departments (
dept_no VARCHAR  NOT NULL,
dept_name VARCHAR   NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments;


CREATE TABLE titles (
emp_no INT NOT NULL,
title VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles;


CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;


CREATE TABLE salaries (
emp_no INT NOT NULL PRIMARY KEY,
salary INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;


CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

