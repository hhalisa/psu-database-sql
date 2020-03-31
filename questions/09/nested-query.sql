SELECT s.sname
FROM sailor s
WHERE NOT EXISTS(
	SELECT b.bid
	FROM boat b
	WHERE b.bid NOT IN(
		SELECT r.bid
		FROM reservation r
		WHERE r.sid = s.sid
	)
);
