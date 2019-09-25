-- Database used is Oracle

CREATE TABLE junkmail(
  Name varchar(10),
  Address char,
  ID int,
  SameFam int
);

INSERT INTO junkmail VALUES ('Alice',   'A',      10,  NULL);
INSERT INTO junkmail VALUES ('Bob',     'B',      15,  NULL);
INSERT INTO junkmail VALUES ('Carmen',  'C',      22,  NULL);
INSERT INTO junkmail VALUES ('Diego',   'A',      9 ,  10);
INSERT INTO junkmail VALUES ('Ella',    'B',      3 ,  15);
INSERT INTO junkmail VALUES ('Farkhad', 'D',      11,  NULL);

DELETE
FROM junkmail
WHERE SameFam IS NULL AND ID IN(
  SELECT SameFam
  FROM junkmail
  WHERE SameFam IS NOT NULL
);
