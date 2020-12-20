-- SELECT column_list
-- FROM table_1
--          INNER JOIN table_2 ON join_condition;


-- SELECT column_list
-- FROM table_1
--          INNER JOIN table_2 USING (column_name);


CREATE TABLE IF NOT EXISTSmembers
(
    member_id INT AUTO_INCREMENT,
    name      VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE IF NOT EXISTS committees
(
    committee_id INT AUTO_INCREMENT,
    name         VARCHAR(100),
    PRIMARY KEY (committee_id)
);

INSERT INTO members(name)
VALUES ('John'),
       ('Jane'),
       ('Mary'),
       ('David'),
       ('Amelia');

INSERT INTO committees(name)
VALUES ('John'),
       ('Mary'),
       ('Amelia'),
       ('Joe');

SELECT *
FROM members;

SELECT *
FROM committees;


SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committe
FROM members AS m
         INNER JOIN committees AS c ON m.name = c.name;

SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committe
FROM members AS m
         INNER JOIN committees AS c USING (name);












SELECT productCode,
       productName,
       textDescription
FROM products t1
         INNER JOIN productlines t2
                    ON t1.productline = t2.productline;

SELECT t1.orderNumber,
       t1.status,
       SUM(quantityOrdered * priceEach) total
FROM orders t1
         INNER JOIN orderdetails t2
                    ON t1.orderNumber = t2.orderNumber
GROUP BY orderNumber;

SELECT orderNumber,
       orderDate,
       orderLineNumber,
       productName,
       quantityOrdered,
       priceEach
FROM orders
         INNER JOIN
     orderdetails USING (orderNumber)
         INNER JOIN
     products USING (productCode)
ORDER BY orderNumber,
         orderLineNumber;



SELECT orderNumber,
       orderDate,
       customerName,
       orderLineNumber,
       productName,
       quantityOrdered,
       priceEach
FROM orders
         INNER JOIN orderdetails
                    USING (orderNumber)
         INNER JOIN products
                    USING (productCode)
         INNER JOIN customers
                    USING (customerNumber)
ORDER BY orderNumber,
         orderLineNumber;


SELECT orderNumber,
       productName,
       msrp,
       priceEach
FROM products p
         INNER JOIN orderdetails o
                    ON p.productcode = o.productcode
                        AND p.msrp > o.priceEach
WHERE p.productcode = 'S10_1678';