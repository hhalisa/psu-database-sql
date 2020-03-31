SELECT s2.sname
FROM sailor s2
WHERE s2.age > (
SELECT MAX(s.age)
FROM sailor s
WHERE s.rating = 10);
