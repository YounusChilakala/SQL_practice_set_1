-- SQL query to find the Nth highest sale

CREATE TABLE IF NOT EXISTS salemast(sale_id int, employee_id int, sale_date date, sale_amt int);
TRUNCATE TABLE salemast;
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('1', '1000', '2012-03-08', 4500);
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('2', '1001', '2012-03-09', 5500);
INSERT INTO salemast (sale_id, employee_id, sale_date, sale_amt) VALUES ('3', '1003', '2012-04-10', 3500); 

-- method 1
select sale_amt, sal from ( select sale_amt,dense_rank()over(order by sale_amt desc)as sal from salemast)t where sal=N


-- method 2
DELIMITER $$
create procedure nth_sal(in n int)
begin 
set n=n-1;
select distinct sale_amt from salemast order by sale_amt desc limit 1 offset n;
END $$

DELIMITER ;
CALL nth_sal(4)
