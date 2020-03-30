--inner query depends on outer query
SELECT s.sname
FROM sailors s
WHERE EXISTS(
	SELECT *
	FROM reservation r
	WHERE r.bid = 103
	AND r.sid = s.sid
);


