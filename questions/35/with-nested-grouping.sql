SELECT s.rating, AVG(s.age)
FROM sailor s
WHERE s.age >= 18
GROUP BY s.rating
HAVING 2 <= (
	SELECT COUNT(*)
	FROM sailor s2
	WHERE s2.rating = s.rating
);
