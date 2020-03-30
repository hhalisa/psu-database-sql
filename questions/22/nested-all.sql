SELECT s2.sid
FROM sailor s2
WHERE s2.rating > ALL (
	SELECT s.rating
	FROM sailor s
	WHERE s.sname = 'horatio'
);
