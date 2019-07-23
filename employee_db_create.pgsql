-- Database: Employee_Database
BEGIN;

CREATE DATABASE "Employee_Database"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE IF NOT EXISTS public.departments (
	dept_no character varying NOT NULL,
	dept_name character varying NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS public.dept_emp (
	emp_no integer NOT NULL,
	dept_no character varying NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS public.dept_manager (
	dept_no character varying NOT NULL,
	emp_no integer NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS public.employees (
	emp_no integer DEFAULT nextval('emp_no_seq'::regclass) NOT NULL,
	birth_date date,
	first_name character varying,
	last_name character varying,
	gender character varying,
	hire_date date NOT NULL,
	PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS public.salaries (
	emp_no integer NOT NULL,
	salary integer NOT NULL,
	from_date date NOT NULL,
	to_date date,
	PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS public.titles (
	emp_no integer NOT NULL,
	title character varying,
	from_date date NOT NULL,
	to_date date
);

COMMIT;