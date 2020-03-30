SELECT DISTINCT s.sname
FROM sailor s
WHERE s.sid IN(
	SELECT r.sid
	FROM reservation r, boat b
	WHERE r.bid = b.bid
	AND b.color = 'red'
);
