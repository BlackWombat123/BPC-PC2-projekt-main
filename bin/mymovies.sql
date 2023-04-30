CREATE TABLE IF NOT EXISTS movies2(id_movie INTEGER NOT NULL PRIMARY KEY,
Name TEXT NOT NULL, 
Director TEXT NOT NULL,
 Year INTEGER NOT NULL,
 Rating INTEGER NOT NULL);
--INSERT INTO emp(empid, empname,email) VALUES(1,"Sam","test@test.com");

SELECT * FROM movies2;
INSERT INTO `movies2` VALUES ('2','Name','Director','2000','4');
--INSERT INTO `movies` VALUES ('3','Name3','Director2','20020','42','Actory');
--INSERT INTO `movies` VALUES ('3','Name3','Director3','20300','43','Actorx');
