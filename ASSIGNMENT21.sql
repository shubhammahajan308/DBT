/*Sameer Dehadrai Page: 1
Assignment - 21
Grant and Revoke.*/
/*1) Give Amit the right to change the ratings of the customers.*/
create user amit ;
GRANT
UPDATE ON customer TO Amit ;

 
 REVOKE
UPDATE ON customers
FROM Amit ;

 --Revoke succeeded.
/*2) Give Manoj the right to give other users 
the right to query the Orders table.*/
GRANT
SELECT ON orders TO Manoj WITH GRANT OPTION;

 --Grant succeeded.
 GRANT
SELECT ON Manoj.orders TO Seema;

 --Grant succeeded.
 GRANT
UPDATE ON Manoj.orders TO Seema;

 --insufficient privileges
/*3) Take the INSERT privilege on Salespeople away from Ajita.*/
REVOKE
INSERT ON salespeople
FROM Ajita;

/*4) Grant Abhijeet the right to insert or update the Customers table 
while keeping her possible rating values in the range of 100 to 500.*/
CREATE OR REPLACE VIEW range100 AS
SELECT *
FROM customers
WHERE rating BETWEEN 100 AND 500 WITH CHECK OPTION;

 --View created.
 GRANT
UPDATE ON range100 TO Ajita;

INSERT INTO range100
VALUES(3000,
       'rakesh',
       'bikaner',
       700,
       7888);

INSERT INTO range100
VALUES(3000,
       'rakesh',
       'bikaner',
       700,
       7888) ;
/*5) Allow Vikram to query the Customers table, but restrict his access
 to those customers*/
 CREATE OR REPLACE VIEW restrictmin AS
SELECT *
FROM customers
WHERE rating NOT IN
    (SELECT min(rating)
     FROM customers);
     GRANT
SELECT ON restrictmin TO Vikaram;
