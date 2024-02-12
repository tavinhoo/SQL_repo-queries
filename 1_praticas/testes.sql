CREATA DATABASE PRATICAS;
USE PRATICAS;
		
CREATE TABLE CATEGORY(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255) NOT NULL,
	TIER INT NOT NULL	
);
		
CREATE TABLE PRODUCT(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255) NOT NULL,
	PRICE FLOAT(10,2) NOT NULL,
	CATEGORY_ID INT,
	FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(ID)
);
		
INSERT INTO CATEGORY VALUES(NULL, 'TOOLS', 2);
INSERT INTO CATEGORY VALUES(NULL, 'COMPUTERS',1);
INSERT INTO CATEGORY VALUES(NULL, 'ELETRONICS', 1);
		
INSERT INTO PRODUCT VALUES(NULL, 'Computer', 1100.0, 1);
INSERT INTO PRODUCT VALUES(NULL, 'Hammer', 90.0, 2);
INSERT INTO PRODUCT VALUES(NULL, 'Smart TV', 1700.0, 1);

+----+----------+---------+-------------+
| ID | NAME     | PRICE   | CATEGORY_ID |
+----+----------+---------+-------------+
|  1 | Computer | 1100.00 |           1 |
|  2 | Hammer   |   90.00 |           2 |
|  3 | Smart TV | 1700.00 |           1 |
+----+----------+---------+-------------+
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| ID          | int          | NO   | PRI | NULL    | auto_increment |
| NAME        | varchar(255) | NO   |     | NULL    |                |
| PRICE       | float(10,2)  | NO   |     | NULL    |                |
| CATEGORY_ID | int          | YES  | MUL | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+

+----+------------+------+
| ID | NAME       | TIER |
+----+------------+------+
|  1 | TOOLS      |    2 |
|  2 | COMPUTERS  |    1 |
|  3 | ELETRONICS |    1 |
+----+------------+------+

+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| ID    | int          | NO   | PRI | NULL    | auto_increment |
| NAME  | varchar(255) | NO   |     | NULL    |                |
| TIER  | int          | NO   |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+

/* JUNÇÃO */ 
SELECT P.ID, P.NAME, P.PRICE, C.ID AS CATEGORY_ID, C.NAME
FROM PRODUCT P 
INNER JOIN CATEGORY C 
ON P.CATEGORY_ID = C.ID;

