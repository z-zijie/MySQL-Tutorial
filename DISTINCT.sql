-- SELECT DISTINCT
--     select_list
-- FROM
--     table_name;


SELECT lastName
FROM employees
ORDER BY lastName;

SELECT DISTINCT lastName
FROM employees
ORDER BY lastName;

-- If you use the GROUP BY clause in the SELECT statement without using aggregate functions, the GROUP BY clause behaves like the DISTINCT clause.

SELECT state
FROM customers
GROUP BY state;

-- Generally speaking, the DISTINCT clause is a special case of the GROUP BY clause. The difference between DISTINCT clause and GROUP BY clause is that the GROUP BY clause sorts the result set whereas the DISTINCT clause does not.