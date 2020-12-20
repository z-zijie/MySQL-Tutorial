SELECT m.member_id,
       m.name AS member,
       c.committee_id,
       c.name AS committee
FROM members AS m
         RIGHT JOIN committees AS c USING (name);