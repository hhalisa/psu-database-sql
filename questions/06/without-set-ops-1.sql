BEGIN TRANSACTION;

SELECT DISTINCT t1.sname
FROM (
	SELECT s.sname, s.sid
	FROM sailor s, reservation r, boat b
	WHERE s.sid = r.sid
	AND r.bid = b.bid
	AND b.color = 'red'
) AS t1	
WHERE t1.sid IN (
	SELECT s.sid
	FROM sailor s, reservation r, boat b
	WHERE s.sid = r.sid
	AND r.bid = b.bid
	AND b.color = 'green'
);	

ROLLBACK TRANSACTION;
