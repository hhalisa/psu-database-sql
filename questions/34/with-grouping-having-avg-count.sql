SELECT s.rating, AVG(s.age)
FROM sailor s
GROUP BY s.rating
HAVING COUNT(s.sid) >= 2;
