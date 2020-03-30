SELECT DISTINCT s.sname
FROM sailor s, reservation r, boat b
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red'
UNION
SELECT DISTINCT s.sname
FROM sailor s, reservation r, boat b
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'green';
