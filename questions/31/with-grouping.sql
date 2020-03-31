SELECT MIN(s.age), s.rating
FROM sailor s
GROUP BY s.rating;
