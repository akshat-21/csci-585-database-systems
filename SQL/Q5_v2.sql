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

SELECT l.Chef
FROM desserts l, desserts m, desserts n
WHERE l.Chef=m.Chef AND m.Chef=n.Chef AND l.Chef=n.Chef AND l.Dish='Apple pie'
  AND m.Dish='Upside down pineapple cake'
  AND n.Dish='Creme brulee';

-- Explanation for the query:
-- In this query, I have self joined the table on the attribute Chef.
-- The result of join would be all possible combinations of Dish made by a Chef.
-- Then I find a Chef that makes dishes of combination of 'Apple pie', 'Upside down pineapple cake' and 'Creme brulee'
