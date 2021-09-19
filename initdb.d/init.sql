CREATE DATABASE IF NOT EXISTS sandbox;

CREATE TABLE IF NOT EXISTS sandbox.employee 
(id int, name varchar(255), status varchar(255), join_day varchar(255), birthday varchar(255), email varchar(255), tel varchar(255), address varchar(255), private_tel varchar(255), grade varchar(255), belongs varchar(255));

CREATE TABLE IF NOT EXISTS sandbox.department (id int, name varchar(255), boss_employee_id int, upper_department_id int);
