SELECT b.bid, COUNT(*)
FROM reservation r, boat b
WHERE  b.bid = r.bid
AND b.color = 'red'
GROUP BY b.bid;
