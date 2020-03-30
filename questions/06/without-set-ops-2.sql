BEGIN TRANSACTION;

SELECT DISTINCT s.sname
FROM sailor s, reservation r1, reservation r2, boat b1, boat b2
WHERE s.sid = r1.sid
AND s.sid = r2.sid
AND r1.bid = b1.bid
AND r2.bid = b2.bid
AND b1.color = 'red'
AND b2.color = 'green';

ROLLBACK TRANSACTION;
