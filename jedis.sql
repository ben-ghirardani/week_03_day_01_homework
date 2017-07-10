DROP TABLE IF EXISTS lightsabres;
DROP TABLE IF EXISTS jedis;

CREATE TABLE jedis (
  -- column_name type
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT2
);

CREATE TABLE lightsabres (
  id SERIAL8 PRIMARY KEY,
  owner_id INT8 REFERENCES jedis(id),
  colour VARCHAR(255),
  hilt_metal VARCHAR(255)
);


INSERT INTO jedis ( name, darkside, age ) VALUES ( 'Luke', false, 21 );
INSERT INTO jedis ( name, darkside, age ) VALUES ( 'Vader', true, 48 );
INSERT INTO jedis ( name, age ) VALUES ('Obiwan', 33);
INSERT INTO jedis ( name, darkside, age ) VALUES ('Anakin', false, 12);

INSERT INTO lightsabres ( owner_id, colour, hilt_metal ) VALUES ( '1', 'blue', 'iron' );
INSERT INTO lightsabres ( owner_id, colour, hilt_metal ) VALUES ( '2', 'red', 'black' );

UPDATE jedis 
  SET darkside = true, 
  age = 22 
  WHERE id = 4;

SELECT * FROM jedis ORDER BY id DESC;
SELECT * FROM lightsabres;