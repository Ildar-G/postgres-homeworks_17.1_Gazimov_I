#-- SQL-команды для создания таблиц

CREATE TABLE customers
(
	customer_id varchar(255) PRIMARY KEY,
	company_name varchar(255),
	contact_name varchar(255)
)

CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(255),
	last_name varchar(255),
	title varchar(255),
	birth_date varchar(255),
	notes text
)

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(255) REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date date,
	ship_city varchar(255)
)