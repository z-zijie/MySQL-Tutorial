-- The left join selects data starting from the left table. For each row in the left table, the left join compares with every row in the right table. If the values in the two rows cause the join condition evaluates to true, the left join creates a new row whose columns contain all columns of the rows in both tables and includes this row in the result set.



SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committee
FROM members AS m
         LEFT JOIN committees AS c USING (name);