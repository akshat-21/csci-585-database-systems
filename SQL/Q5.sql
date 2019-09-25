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
WHERE Dish='Apple pie' and Chef IN (SELECT Chef
  FROM desserts
  WHERE Dish='Upside down pineapple cake' AND Chef IN(SELECT Chef
    FROM desserts
    WHERE Dish='Creme brulee'));

-- Explanation for the query:
-- In the above query, I have used subqueries.
-- The last subquery will fetch Chefs that make Creme brulee.
-- The subquery before that will fetch Chefs that make Upside down pineapple cake and Creme brulee.
-- The Chefs that make Creme brulee is the result of a subquery.
-- And finally, the main query will give Chefs that make Apple pie and the results of Chefs that make Upside down pineapple cake and Creme brulee.
