SELECT s.sid
FROM sailor s
WHERE rating =10
UNION
select r.sid
FROM reservation r
WHERE r.bid = 104;
