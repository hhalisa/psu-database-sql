BEGIN TRANSACTION;

CREATE TABLE sailor(
	sid INTEGER,
	sname VARCHAR(50),
	rating INTEGER,
	age NUMERIC(3, 1),
	CONSTRAINT sailor_pk PRIMARY KEY(sid)
);

CREATE TABLE boat(
	bid INTEGER,
	bname VARCHAR(50),
	color VARCHAR(50),
	CONSTRAINT boat_pk PRIMARY KEY(bid)
);

CREATE TABLE reservation(
	sid INTEGER,
	bid INTEGER,
	day DATE,
	CONSTRAINT reservation_pk PRIMARY KEY(sid, bid),
	CONSTRAINT reservation_has_sid_fk FOREIGN KEY (sid) REFERENCES sailor(sid) ON DELETE CASCADE,
	CONSTRAINT reservation_has_bid_fk FOREIGN KEY (bid) REFERENCES boat(bid) ON DELETE CASCADE);

COMMIT TRANSACTION;
