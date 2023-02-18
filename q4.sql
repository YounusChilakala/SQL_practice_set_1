-- SQL query to find the marks, which appear at least thrice one after another without interruption

CREATE TABLE IF NOT EXISTS logs (student_id int, marks int);
TRUNCATE TABLE logs;
INSERT INTO logs (student_id, marks) VALUES ('101', '83');
INSERT INTO logs (student_id, marks) VALUES ('102', '79');
INSERT INTO logs (student_id, marks) VALUES ('103', '83');
INSERT INTO logs (student_id, marks) VALUES ('104', '83');
INSERT INTO logs (student_id, marks) VALUES ('105', '83');
INSERT INTO logs (student_id, marks) VALUES ('106', '79');
INSERT INTO logs (student_id, marks) VALUES ('107', '79');
INSERT INTO logs (student_id, marks) VALUES ('108', '83');
select * from logs;

SELECT DISTINCT L1.marks AS ConsecutiveMarks
FROM logs L1
INNER JOIN logs L2 ON L1.student_id = L2.student_id + 1 AND L1.marks = L2.marks
INNER JOIN logs L3 ON L1.student_id = L3.student_id + 2 AND L1.marks = L3.marks;

-- explanation:
-- As we want to select the marks which appear three consecutive times, we write a query to join the table
-- with itself on certain conditions- those are, inner join the table with itself first on id+1 AND marks(id+1 gives next row to be checked),
-- then inner join itself again on id+2(id+2 gives the third row to be checked) alongside joining it with marks
-- this ensures that the matching records of the table's row 1 is checked with the next row and the row after and 
-- values that match the criteria(same marks over three continuous rows) are displayed.
-- Also note that in 'INNER JOIN logs L2 ON L1.student_id = L2.student_id + 1 AND L1.marks = L2.marks', the id part will be evaluated first 
-- and based on that marks are compared.