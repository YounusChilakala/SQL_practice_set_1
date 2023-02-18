-- Duplicate emails

CREATE TABLE IF NOT EXISTS employees(employee_id int, employee_name varchar(255), email_id varchar(255));
TRUNCATE TABLE employees;
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('101','Liam Alton', 'li.al@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('102','Josh Day', 'jo.da@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('103','Sean Mann', 'se.ma@abc.com');	
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('104','Evan Blake', 'ev.bl@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('105','Toby Scott', 'jo.da@abc.com');
SELECT * FROM employees;

select employee_name,email_id, mails from( select employee_name,email_id, count(email_id) as mails from employees group by email_id) where mails>1;


-- explanation:
-- the query is asking us to identify duplicate emails- the subquery containing the count of the emloyee emails gets executed first and 
-- groups it by their id so that every employee id and the count or the number of emails they have is gathered
-- next we provide an alias and then in the outer query we are extracting the data we need and giving our required condidtion
-- imp note: in a query the first step is almost always going to be 'from' and then any sorting or filtering clause, then the requirements like aggregate functions 
-- are looked into, and the final select-ion takes place
