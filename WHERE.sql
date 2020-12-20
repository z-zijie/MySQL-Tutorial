-- SELECT 
--     select_list
-- FROM
--     table_name
-- WHERE
--     search_condition;

SELECT lastName,
       firstName,
       jobTitle
FROM employees
WHERE jobTitle = 'Sales Rep';

SELECT  lastName,
       firstName,
       jobTitle
FROM employees
WHERE jobTitle = 'Sales Rep' AND
      officeCode = 1;

SELECT  lastName,
       firstName,
       jobTitle,
       officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' OR
      officeCode = 1
ORDER BY officeCode,
         jobTitle;

SELECT lastName,
       firstName,
       officeCode
FROM employees
WHERE officeCode BETWEEN 1 AND 3
ORDER BY officeCode;

SELECT firstName,
       lastName,
       officeCode
FROM employees
WHERE lastName LIKE '%son'
ORDER BY firstName;

SELECT firstName,
       lastName,
       officeCode
FROM employees
WHERE officeCode IN (1, 2, 3)
ORDER BY officeCode;

SELECT lastName,
       firstName,
       reportsTo
FROM employees
WHERE reportsTo IS NULL;

SELECT lastName,
       firstName,
       jobTitle
FROM employees
WHERE jobTitle != 'Sales Rep';

SELECT lastName,
       firstName,
       officeCode
FROM employees
WHERE officeCode <= 4;