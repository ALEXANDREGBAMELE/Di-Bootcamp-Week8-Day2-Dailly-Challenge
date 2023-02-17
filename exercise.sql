-- @author : Alexandre GBAMELE
-- Database: puzzle

-- DROP DATABASE IF EXISTS puzzle;
-- create table to table FirstTab 
CREATE TABLE FirstTab (
     id integer, 
     name VARCHAR(10)
);
-- insert values into table FirstTab
INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar');

SELECT * FROM FirstTab ;

CREATE TABLE SecondTab (
    id integer 
);

INSERT INTO SecondTab VALUES
(5),
(NULL);


SELECT * FROM SecondTab;

-- Questions
-- Q1. What will be the OUTPUT of the following statement?
-- ANS.1 The result will be " 0 "
-- Q2. What will be the OUTPUT of the following statement?
-- ANS.2 The result will be " 2 "
-- Q3. What will be the OUTPUT of the following statement?
-- ANS.3 The result will be " 0 "
-- Q4. What will be the OUTPUT of the following statement?
-- ANS.4 The result will be " 2 "

SELECT COUNT(*) 
    FROM FirstTab AS ft 
	WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );
	
SELECT COUNT(*) 
    FROM FirstTab AS ft 
	WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );
	
SELECT COUNT(*) 
    FROM FirstTab AS ft 
	WHERE ft.id NOT IN ( SELECT id FROM SecondTab );
	
SELECT COUNT(*) 
    FROM FirstTab AS ft
	WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL );