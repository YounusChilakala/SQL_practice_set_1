-- SQL query to find the information on each salesperson

-- creating our tables and checking if it already exists
CREATE TABLE IF NOT EXISTS salespersons(salesperson_id int, first_name varchar(255), last_name varchar(255));
CREATE TABLE IF NOT EXISTS address (address_id int, salesperson_id  int, city varchar(255), state varchar(255), country varchar(255));
-- truncate deletes all the values, if any, so that there isn't a conflict while data insertion
TRUNCATE TABLE salesperson;
--inserting values
INSERT INTO salespersons (salesperson_id, first_name, last_name) VALUES ('1', 'Green', 'Wright');
INSERT INTO salespersons (salesperson_id, first_name, last_name) VALUES ('2', 'Jones', 'Collins');
INSERT INTO salespersons (salesperson_id, first_name, last_name) VALUES ('3', 'Bryant', 'Davis');

TRUNCATE TABLE address;
INSERT INTO address (address_id, salesperson_id, city, state, country) VALUES ('1', '2', 'Los Angeles','California', 'USA');
INSERT INTO address (address_id, salesperson_id, city, state, country) VALUES ('2', '3', 'Denver', 'Colorado','USA');
INSERT INTO address (address_id, salesperson_id, city, state, country) VALUES ('3', '4', 'Atlanta', 'Georgia','USA');

-- Query to find the information of each salesperson
SELECT first_name, last_name, city, state 
FROM salespersons LEFT JOIN address
ON salespersons.salesperson_id = address.salesperson_id;