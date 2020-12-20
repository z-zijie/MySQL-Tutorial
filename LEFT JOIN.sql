-- The left join selects data starting from the left table. For each row in the left table, the left join compares with every row in the right table. If the values in the two rows cause the join condition evaluates to true, the left join creates a new row whose columns contain all columns of the rows in both tables and includes this row in the result set.



SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committee
FROM members AS m
         LEFT JOIN committees AS c USING (name);





SELECT customerNumber,
       customerName,
       orderNumber,
       status
FROM customers
         LEFT JOIN orders USING (customerNumber);



-- The LEFT JOIN clause is very useful when you want to find rows in a table that doesn’t have a matching row from another table.

SELECT c.customerNumber,
       c.customerName,
       o.orderNumber,
       o.status
FROM customers c
         LEFT JOIN orders o
                   ON c.customerNumber = o.customerNumber
WHERE orderNumber IS NULL;



-- This example uses two LEFT JOIN clauses to join the three tables: employees, customers, and payments.

SELECT lastName,
       firstName,
       customerName,
       checkNumber,
       amount
FROM employees
         LEFT JOIN customers ON
    employeeNumber = salesRepEmployeeNumber
         LEFT JOIN payments ON
    payments.customerNumber = customers.customerNumber
ORDER BY customerName,
         checkNumber;

-- The first LEFT JOIN returns all employees and customers who represented each employee or NULL if the employee does not in charge of any customer.
-- The second LEFT JOIN returns payments of each customer represented by an employee or NULL if the customer has no payment.



SELECT o.orderNumber,
       customerNumber,
       productCode
FROM orders o
         LEFT JOIN orderdetails
                   USING (orderNumber)
WHERE orderNumber = 10123;

SELECT o.orderNumber,
       customerNumber,
       productCode
FROM orders o
         LEFT JOIN orderdetails d
                   ON o.orderNumber = d.orderNumber
                       AND o.orderNumber = 10123;

-- Notice that for INNER JOIN clause, the condition in the ON clause is equivalent to the condition in the WHERE clause.