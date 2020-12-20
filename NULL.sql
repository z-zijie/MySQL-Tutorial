CREATE TABLE IF NOT EXISTS projects
(
    id            INT AUTO_INCREMENT,
    title         VARCHAR(255),
    begin_date    DATE,
    complete_date DATE,
    PRIMARY KEY (id)
);

INSERT INTO projects(title, begin_date, complete_date)
VALUES ('New CRM', '2020-01-01', NULL),
       ('ERP Future', '2020-01-01', NULL),
       ('VR', '2020-01-01', '2030-01-01');

SELECT *
FROM projects
WHERE complete_date IS NULL;