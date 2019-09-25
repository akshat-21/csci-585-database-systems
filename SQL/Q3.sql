-- Database used is Oracle

CREATE TABLE Projects(
  ProjectID varchar(10),
  Step int,
  Status char
);

INSERT INTO Projects VALUES ('P100',       0 ,    'C');
INSERT INTO Projects VALUES ('P100',       1 ,    'W');
INSERT INTO Projects VALUES ('P100',       2 ,    'W');
INSERT INTO Projects VALUES ('P201',       0 ,    'C');
INSERT INTO Projects VALUES ('P201',       1 ,    'C');
INSERT INTO Projects VALUES ('P333',       0 ,    'W');
INSERT INTO Projects VALUES ('P333',       1 ,    'W');
INSERT INTO Projects VALUES ('P333',       2 ,    'W');
INSERT INTO Projects VALUES ('P333',      3 ,    'W');

SELECT ProjectID
FROM Projects P
WHERE Step = 0
AND Status = 'C'
AND 'W' = ALL (SELECT Status
FROM Projects Q
WHERE Step != 0
AND P.ProjectID = Q.ProjectID);
