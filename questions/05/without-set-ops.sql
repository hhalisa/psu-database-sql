SELECT DISTINCT s.sname
FROM sailor s, boat b, reservation r
WHERE s.sid = r.sid AND r.bid = b.bid AND (b.color = 'red' OR b.color = 'green');
