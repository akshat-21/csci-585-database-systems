-- Database used is Oracle

CREATE TABLE desserts(
  Chef char,
  Dish varchar(30)
);

INSERT INTO desserts VALUES ('A',          'Mint chocolate brownie');
INSERT INTO desserts VALUES ('B',          'Upside down pineapple cake');
INSERT INTO desserts VALUES ('B',          'Creme brulee');
INSERT INTO desserts VALUES ('B',          'Mint chocolate brownie');
INSERT INTO desserts VALUES ('C',          'Upside down pineapple cake');
INSERT INTO desserts VALUES ('C',          'Creme brulee');
INSERT INTO desserts VALUES ('D',          'Apple pie');
INSERT INTO desserts VALUES ('D',          'Upside down pineapple cake');
INSERT INTO desserts VALUES ('D',          'Creme brulee');
INSERT INTO desserts VALUES ('E',          'Apple pie');
INSERT INTO desserts VALUES ('E',          'Upside down pineapple cake');
INSERT INTO desserts VALUES ('E',          'Creme brulee');
INSERT INTO desserts VALUES ('E',          'Bananas Foster');

SELECT Chef
FROM desserts
WHERE Dish='Apple pie'
INTERSECT
SELECT Chef
FROM desserts
WHERE Dish='Upside down pineapple cake'
INTERSECT
SELECT Chef
FROM desserts
WHERE Dish='Creme brulee';

-- Explanation for the query:
-- In the above query, I am finding all chefs that make 'Apple pie',
-- then chefs that make 'Upside down pineapple cake' and chefs that make 'Creme brulee'.
-- Finally, I intersect each of these queries to give Chefs that make each of the three.
