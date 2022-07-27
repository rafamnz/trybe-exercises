SELECT m.title, bo.domestic_sales, bo.international_sales
FROM pixar.box_office AS bo
INNER JOIN pixar.movies AS m
ON bo.movie_id = m.id;

SELECT m.title, (bo.domestic_sales + bo.international_sales) AS sales_number
FROM pixar.box_office AS bo
INNER JOIN pixar.movies AS m
ON bo.movie_id = m.id
WHERE bo.international_sales > bo.domestic_sales;

SELECT m.title, bo.rating
FROM pixar.box_office AS bo
INNER JOIN pixar.movies AS m
ON bo.movie_id = m.id
ORDER BY rating DESC;

SELECT
t.`name` AS theater_name,
t.location,
m.title,
m.director,
m.`year`,
m.length_minutes
FROM pixar.theater AS t
LEFT JOIN pixar.movies AS m
ON t.id = m.theater_id
ORDER BY theater_name;

SELECT
t.`name` AS theater_name,
t.location,
m.title,
m.director,
m.`year`,
m.length_minutes
FROM pixar.theater AS t
RIGHT JOIN pixar.movies AS m
ON t.id = m.theater_id
WHERE
ORDER BY theater_name;

SELECT
m.title,
m.director,
m.`year`,
m.length_minutes
FROM pixar.theater AS t
INNER JOIN pixar.movies AS m
ON t.id = m.theater_id
INNER JOIN pixar.box_office as bo
ON bo.movie_id = m.id
WHERE bo.rating > 8;
