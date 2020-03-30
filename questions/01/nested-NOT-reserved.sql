SELECT s.sname
FROM sailor s
WHERE s.sid NOT IN(
	SELECT r.sid
	FROM reservation r
	WHERE r.bid = '103'
);
