SELECT tr.sid
FROM(
	SELECT r1.sid
	FROM reservation r1, boat br
	WHERE br.color = 'red'
	AND r1.bid = br.bid
) AS tr
WHERE tr.sid NOT IN(
	SELECT r2.sid
	FROM reservation r2, boat bg
	WHERE bg.color = 'green'
	AND r2.bid = bg.bid
);
