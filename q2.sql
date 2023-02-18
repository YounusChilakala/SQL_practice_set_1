-- SQL query to find the third highest sale

CREATE TABLE If Not Exists salemast(sale_id int, employee_id int, sale_date date, sale_amt int);
TRUNCATE TABLE salemast;
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('1', '1000', '2012-03-08', 4500);
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('2', '1001', '2012-03-09', 5500);
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('3', '1003', '2012-04-10', 3500); 
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('3', '1003', '2012-04-10', 2500); 

select sale_amt from (select employee_id,sale_amt,dense_rank()over(order by sale_amt desc) as sal from salemast)t
where sal=3;
-- explanation: 
-- the above query uses a subquery in which we select employee_id, sale amount and here we are using a window function called 'dense_rank()' 
-- which creates a ranking for whichever criteria is specified inside the function, in this case we are ordering by sale amount in descending order
-- this will give us the sales from highest to lowest and now we give an alias to this function and also to the subquery as whole, 
-- then we write our required filtering condition