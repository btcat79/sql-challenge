-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

-- Create the departments table
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
    emp_no INT,
    dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

-- Import data into employees table
COPY employees(emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:/Users/Hester/Dropbox/Berk/09-SQL/UCB-VIRT-DATA-PT-07-2024-U-LOLC-main/09-SQL/sql-challenge/Starter_Code/data/employees.csv' DELIMITER ',' CSV HEADER;