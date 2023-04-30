BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `user_has_role` (
	`user_id_user`	INTEGER,
	`role_id_role`	INTEGER,
	FOREIGN KEY(`role_id_role`) REFERENCES `role`(`id_role`),
	FOREIGN KEY(`user_id_user`) REFERENCES `user`(`id_user`)
);
INSERT INTO `user_has_role` VALUES (1,1);
INSERT INTO `user_has_role` VALUES (2,1);
INSERT INTO `user_has_role` VALUES (3,2);
CREATE TABLE IF NOT EXISTS `movies` (
	`id_movie`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT NOT NULL UNIQUE,
	`Director`	TEXT NOT NULL,
	`Year`	INTEGER,
	`Rating`	INTEGER,
	`Actors`	TEXT NOT NULL
);
INSERT INTO `movies` VALUES (1,'Name','Director','2000','4','Actor');
INSERT INTO `movies` VALUES (1,'Name2','Director2','20020','42','Actory');
INSERT INTO `movies` VALUES (1,'Name3','Director3','20300','43','Actorx');
CREATE TABLE IF NOT EXISTS `role` (
	`id_role`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	INTEGER NOT NULL UNIQUE
);
INSERT INTO `role` VALUES (1,'USER');
INSERT INTO `role` VALUES (2,'ADMIN');
INSERT INTO `role` VALUES (3,'MANAGER');
COMMIT;
