SELECT MIN(s.age), s.rating
FROM sailor s
WHERE s.age >= 18
GROUP BY s.rating
HAVING count(*) >= 2;
