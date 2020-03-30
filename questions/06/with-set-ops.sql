BEGIN TRANSACTION;

SELECT s.sname, s.sid
FROM sailor s, reservation r, boat b
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red'
INTERSECT
SELECT s.sname, s.sid
FROM sailor s, reservation r, boat b
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'green';

ROLLBACK TRANSACTION;
