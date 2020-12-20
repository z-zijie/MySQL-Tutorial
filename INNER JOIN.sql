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