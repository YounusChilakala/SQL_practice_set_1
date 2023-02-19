-- identify dates when so2 levels are greater than the previous day

CREATE TABLE IF NOT EXISTS so2_pollution (city_id int, date date, so2_amt int);
TRUNCATE TABLE so2_pollution;
INSERT INTO so2_pollution (city_id, date, so2_amt) VALUES ('701', '2015-10-15', '5');
INSERT INTO so2_pollution (city_id, date, so2_amt) VALUES ('702', '2015-10-16', '7');
INSERT INTO so2_pollution (city_id, date, so2_amt) VALUES ('703', '2015-10-17', '9');
INSERT INTO so2_pollution (city_id, date, so2_amt) VALUES ('704', '2015-10-18', '15');
INSERT INTO so2_pollution (city_id, date, so2_amt) VALUES ('705', '2015-10-19', '14');

SELECT * FROM so2_pollution;

select * from so2_pollution s1 join so2_pollution s2 on datediff(s1.date,s2.date)=1 and s1.so2_amt>s2.so2_amt;

-- explanation:
-- just like in one of the previous problems here we are using self join to join the table with itself so that we 
-- can compare the values pertaining to our criteria that is so2 amounts being greater than previous day.
-- the datediff() function subtracts the dates to check if the difference is 1 day or not.