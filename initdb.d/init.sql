CREATE DATABASE IF NOT EXISTS HR;

CREATE TABLE IF NOT EXISTS HR.employee (
    id int, name varchar(255), status varchar(255), join_day varchar(255), 
    birthday varchar(255), email varchar(255), tel varchar(255), address varchar(255), 
    private_tel varchar(255), grade varchar(255), belongs_department_id varchar(255)
);

CREATE TABLE IF NOT EXISTS HR.department (
    id int, name varchar(255), boss_employee_id int, upper_department_id int
);

DROP VIEW IF EXISTS HR.enter_admin;
CREATE VIEW HR.enter_admin (id, name, grade, boss_name) AS
SELECT T1.id, T1.name, T1.grade, T2.name
FROM HR.employee T1, HR.employee T2, HR.department T3
WHERE T2.id = T3.boss_employee_id AND T1.belongs_department_id = T3.id
;
