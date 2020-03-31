SELECT s.sname, s.age
FROM sailor s
WHERE s.age = (
	SELECT MAX(s2.age)
	FROM sailor s2
);
