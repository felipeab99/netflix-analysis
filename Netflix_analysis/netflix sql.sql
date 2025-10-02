SELECT country, COUNT(*) AS total_titles
FROM `analise-netflix.netflix.titles_by_country`
GROUP BY country
ORDER BY total_titles DESC
LIMIT 15;

SELECT FORMAT_DATE('%Y-%m', date_added) AS month_year, COUNT(*) AS total_titles
FROM `analise-netflix.netflix.titles_clean`
WHERE date_added IS NOT NULL
GROUP BY month_year
ORDER BY month_year;

SELECT type, COUNT(*) AS total
FROM `analise-netflix.netflix.titles_clean`
GROUP BY type;

SELECT actor, COUNT(*) AS total_titles
FROM `analise-netflix.netflix.titles_by_cast`
WHERE actor IS NOT NULL AND actor != ''
GROUP BY actor
ORDER BY total_titles DESC
LIMIT 15;

SELECT genre, COUNT(*) AS total_titles
FROM `analise-netflix.netflix.titles_by_genre`
GROUP BY genre
ORDER BY total_titles DESC
LIMIT 15;

SELECT c.actor, g.genre, COUNT(*) AS total_titles
FROM `analise-netflix.netflix.titles_by_cast` c
JOIN `analise-netflix.netflix.titles_by_genre` g
ON c.show_id = g.show_id
GROUP BY c.actor, g.genre
ORDER BY g.genre, total_titles DESC;




