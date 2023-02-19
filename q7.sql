-- unique email ids with lower id intact

CREATE TABLE IF NOT EXISTS employees(employee_id int, employee_name varchar(255), email_id varchar(255));
TRUNCATE TABLE employees;
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('101','Liam Alton', 'li.al@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('102','Josh Day', 'jo.da@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('103','Sean Mann', 'se.ma@abc.com');	
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('104','Evan Blake', 'ev.bl@abc.com');
INSERT INTO employees (employee_id,employee_name, email_id) VALUES ('105','Toby Scott', 'jo.da@abc.com');
SELECT * FROM employees;


DELETE e1 FROM employees e1,  employees e2
WHERE e1.email_id = e2.email_id AND e1.employee_id > e2.employee_id;
SELECT * FROM employees;

-- explanation :
-- we need unique emails from the table and only those whose id is lower should be displayed in the output so
-- from the original table its clear that id 2 and 5 have same emails but they are clearly different people and we want only id 2
-- so for this writing a simple query with distinct isnt enough. our query here uses self join and filters out the results based on the 
-- conditions provided. id of e1>e2 ensures that unique values will be returned as the joined table will compare email id equality alongside
-- the provided id condition which is then deleted using the delete statement.