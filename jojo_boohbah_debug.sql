-- Fixed Question 1
SELECT boohbah_id, AVG(sync_level), name
FROM boohbah_stand_link
JOIN boohbah USING (boohbah_id)
GROUP BY boohbah_id, name;

-- Fixed Question 2
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l ON b.boohbah_id = l.stand_id
JOIN jojo_stand s ON l.stand_id = s.stand_id;

-- Fixed Question 3
SELECT name, color
FROM boohbah
WHERE energy_level > 80;

-- Fixed Question 4
SELECT b.boohbah_id, l.stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE b.boohbah_id = 2;

-- Fixed Question 5
SELECT name
FROM boohbah
WHERE energy_level > (SELECT AVG(energy_level)FROM boohbah);
        

-- Fixed Question 6
SELECT name
FROM boohbah
WHERE energy_level > MAX (SELECT power FROM jojo_stand WHERE season = 3);

-- Fixed Question 7
SELECT b.name, s.stand_name
FROM boohbah b, jojo_stand s
WHERE b.energy_level > 80 and b.boohbah_id = s.boohbah_id;

-- Fixed Question 8
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l on b.boohbah_id = l.boohbah_id
JOIN jojo_stand s on l.stand_id = s.stand_id
WHERE b.energy_level > 80;

-- Fixed Question 9
SELECT boohbah_id, stand_id
FROM boohbah_stand_link
WHERE (boohbah_id, stand_id) IN
(SELECT boohbah_id, stand_id
FROM boohbah_stand_link);

-- Fixed Question 10
MERGE INTO boohbah b
USING boohbah_stand_link l
ON (b.boohbah_id = s.stand_id)
WHEN MATCHED THEN
UPDATE SET b.energy_level = 999;