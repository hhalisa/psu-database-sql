BEGIN TRANSACTION;

insert into sailor( sid, sname, rating, age)
VALUES
(22, 'dustin', 7, 45.0),
(29, 'brutus', 1, 33.50),
(31, 'lubber', 8, 55.5),
(32, 'andy', 8, 25.5),
(58, 'rusty', 10, 35.0),
(64, 'horatio', 7, 35.0),
(71, 'zorba', 10, 16.0),
(74, 'horatio', 7, 35.0),
(85, 'art', 3, 25.5),
(95, 'bob', 3, 63.5)
;

insert into boat( bid, bname, color)
VALUES
(101, 'interlake', 'blue'),
(102, 'interlake', 'red'),
(103, 'clipper', 'green'),
(104, 'marine', 'red')
;

insert into reservation( sid, bid, day)
VALUES
(22, 101, '10/10/98'),
(22, 102, '10/10/98'),
(22, 103, '10/8/98'),
(22, 104, '10/7/98'),
(31, 102, '11/10/98'),
(31, 103, '11/6/98'),
(31, 104, '11/12/98'),
(64, 101, '9/5/98'),
(64, 102, '9/8/98'),
(74, 103, '9/8/98')
;

COMMIT TRANSACTION;
