-- Unlike the inner join, left join, and right join, the cross join clause does not have a join condition.

-- The cross join makes a Cartesian product of rows from the joined tables. The cross join combines each row from the first table with every row from the right table to make the result set.

-- Suppose the first table has n rows and the second table has m rows. The cross join that joins the first with the second table will return nxm rows.


-- SELECT select_list
-- FROM table_1
--          CROSS JOIN table_2;


SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committee
FROM members AS m
         CROSS JOIN committees AS c;