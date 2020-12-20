# SELECT select_list
# FROM table_name
# ORDER BY column1 [ASC|DESC], 
# 	   column2 [ASC|DESC],
#	   ...;


SELECT
    contactLastName,
    contactFirstName
FROM customers
ORDER BY
    contactLastName DESC,
    contactFirstName;


SELECT orderNumber,
       orderLineNumber,
       quantityOrdered * priceEach
FROM orderdetails
ORDER BY quantityOrdered * priceEach DESC;

SELECT orderNumber,
       orderLineNumber,
       quantityOrdered * priceEach AS subtotal
FROM orderdetails
ORDER BY subtotal DESC;

SELECT orderNumber,
       status
FROM orders
ORDER BY FIELD(status,
    'In Process',
    'On Hold',
    'Cancelled',
    'Resolved',
    'Disputed',
    'Shipped');
