BEGIN TRANSACTION;

CREATE TEMPORARY TABLE sailors ON COMMIT DROP AS
	SELECT s.sid, s.sname
	FROM sailor s;

CREATE TEMPORARY TABLE green_boats ON COMMIT DROP AS
	SELECT b.bid
	FROM boat b
	WHERE b.color = 'green';

CREATE TEMPORARY TABLE red_boats ON COMMIT DROP AS
	SELECT b.bid
	FROM boat b
	WHERE b.color = 'red';

CREATE TEMPORARY TABLE sailor_reservation_green_boat ON COMMIT DROP AS
	SELECT s.sid
	FROM sailors s, reservation r, green_boats b
	WHERE s.sid = r.sid
	AND r.bid = b.bid;

CREATE TEMPORARY TABLE sailor_reservation_red_boat ON COMMIT DROP AS
	SELECT s.sname, s.sid
	FROM sailors s, reservation r, red_boats b
	WHERE s.sid = r.sid
	AND r.bid = b.bid;

SELECT DISTINCT rs.sname
FROM sailor_reservation_red_boat AS rs
WHERE rs.sid IN (
	SELECT * FROM sailor_reservation_green_boat
);

ROLLBACK TRANSACTION;
