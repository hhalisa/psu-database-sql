SELECT s.sname
FROM sailor s
WHERE s.sid IN(
	SELECT r.sid
	FROM reservation r
	WHERE r.bid IN(
		SELECT b.bid
		FROM boat b
		WHERE b.color = 'red'
	)
);
