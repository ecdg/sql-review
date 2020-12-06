CREATE TABLE friends(
    id INTEGER PRIMARY KEY,
    name TEXT,
    birthday DATE
);

INSERT INTO friends(id, name, birthday)
VALUES(1,'Jane Doe','1990-05-30');
INSERT INTO friends(id,name,birthday)
VALUES(2,'Mari Chan','1999-01-31');
INSERT INTO friends(id,name,birthday)
VALUES(3,'Vivian Luna','1999-06-23');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@samplemail.com'
WHERE id = 1;
UPDATE friends
SET email = 'mari@samplemail.com'
WHERE id = 2;
UPDATE friends
SET email = 'vivian@samplemail.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;


SELECT * FROM friends;
