DROP TABLE instruments;
DROP TABLE families;

CREATE TABLE families
(
  id SERIAL8 PRIMARY KEY,
  type VARCHAR(255),
  description VARCHAR(255)
);


CREATE TABLE instruments
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  family_link INT8 REFERENCES families(id),
  description VARCHAR(255)
);


INSERT INTO families(type,description) VALUES ('Wind','Trumpet, Bagpipes Oboe are samples');
INSERT INTO families(type,description) VALUES ('Keys','Piano, Organ are sample instruments');
INSERT INTO families(type,description) VALUES ('Strings','Guitar , Violin and Accordian are samples ');

INSERT INTO instruments(name,family_link,description) VALUES ('Guitar' ,1, ' as played by Andy Williams');
INSERT INTO instruments(name,family_link,description) VALUES ('Accordian' , 3,' as played by Jimmy Shand');
INSERT INTO instruments(name,family_link,description) VALUES ('Piano' , 2,' as played by Chopin');
INSERT INTO instruments(name,family_link,description) VALUES ('Trumpet' ,1, ' as played by - who knows...');
INSERT INTO instruments(name,family_link,description) VALUES ('Violin' ,3, ' as played by - who Yououdhi Menhoin');
