SELECT * FROM carts;
SELECT * FROM Carts WHERE CARTNUMBER=68;
INSERT INTO userstatus (Status,StaNum) Value ("Administrator",0);
INSERT INTO person (UserStatus_idUserStatus,Login,Password,Name,Otchestvo,Famili) Value (1,"Bikadorov","vbrjkfq","Анатолий","Анатольевич","Быкадоров");
INSERT INTO strani (Strana) Value ("Россия");
INSERT INTO firms (FirmNAME,SSilka,Strani_idStrani) Value ("ОАО НПО ЭРКОН","http://www.erkon-nn.ru/r1-13/",1);
INSERT INTO strani (Strana) Value ("США");
INSERT INTO firms (FirmNAME,SSilka,Strani_idStrani) Value ("Hittite Microwave Corporation","https://www.hittite.com/",2);
INSERT INTO spiskirazr(SpisokIma) Value ("Перечень МОП");
INSERT INTO spiskirazr(SpisokIma) Value ("Перечень разрешенных по заказу УПОП-02");
SELECT FOUND_ROWS() as ID; 
SELECT LAST_INSERT_ID() as ID;

SELECT * FROM userstatus;
SELECT * FROM person;
SELECT * FROM strani;
SELECT * FROM firms;
SELECT * FROM spiskirazr;
SELECT * FROM pic3d;
SELECT * FROM parts;
SELECT * FROM datashets;

SELECT * FROM pic3d WHERE idPic3D = 1;

INSERT INTO parttype (Name) Value ("Резисторы");
INSERT INTO parttype (Name) Value ("Конденсаторы");
INSERT INTO partsubtype (PartType_idPartType,SubTipe,SubTipe1,SubTipe2,SubTipe3,Klass,ObshNTD) 
									Value (1,"SMD","Постоянный","Р1-12","0,1","Резистор",1);
INSERT INTO partsubtype (PartType_idPartType,SubTipe,SubTipe1,SubTipe2,SubTipe3,Klass,ObshNTD)
									Value (1,"SMD","Переменный","СП5-19","0,1","Резистор",1);
INSERT INTO PartPoNTD (Parts_idParts,PartSubType_idPartSubTipe,CARTS_idCARDS,Person_idPerson)
									Value (3,1,66,1);


DELETE FROM  partsubtype WHERE idPartSubTipe = 3;
DELETE FROM  librefs WHERE idLibRef = 2;
DELETE FROM firms WHERE idFirms = 3;
DELETE FROM parts WHERE idParts = 1;
DELETE FROM datashets WHERE idDatashets = 3;
INSERT INTO partsubtype (PartType_idPartType,SubTipe,SubTipe1,SubTipe2,SubTipe3,Klass,ObshNTD) 
									Value (1,"Выводный","Переменный","СП5-2ВА","-","Резистор",1);
INSERT INTO partsubtype (PartType_idPartType,SubTipe,SubTipe1,SubTipe2,SubTipe3,Klass,ObshNTD) 
									Value (1,"Выводный","Постоянный","С2-29","0,25","Резистор",1);

SELECT * FROM parttype;
SELECT * FROM partsubtype;
SELECT * FROM partsubtype WHERE PartType_idPartType = 1;

SELECT DISTINCT SubTipe FROM partsubtype where PartType_idPartType = 1;
SELECT DISTINCT SubTipe1 FROM partsubtype where PartType_idPartType = 1;
SELECT DISTINCT SubTipe1 FROM partsubtype WHERE SubTipe = "SMD" and PartType_idPartType = 1;
SELECT DISTINCT parttype.Name, parttype.idPartType FROM parttype INNER JOIN partsubtype 
ON parttype.idPartType = partsubtype.PartType_idPartType WHERE partsubtype.SubTipe2 = "Резистор";
ALTER TABLE partsubtype ADD Klass VARCHAR(160);
ALTER TABLE partsubtype ADD ObshNTD INTEGER;
ALTER TABLE PartSubType ADD Pic3D_idPic3D INTEGER;
ALTER TABLE PartSubType ADD ALLPIC3D BLOB;
ALTER TABLE partsubtype ADD ALLPIC3DName VARCHAR(100);
ALTER TABLE parts ADD PartImKey VARCHAR(100);
ALTER TABLE parts ADD PartFULLName VARCHAR(250);
ALTER TABLE datashets ADD Data_tame DATETIME;
ALTER TABLE datashets  MODIFY idDatashets INTEGER auto_increment;
ALTER TABLE datashets  MODIFY PartsData_idPartsData INTEGER default null;
 
ALTER TABLE parts MODIFY PartsData_idPartsData INT;
ALTER TABLE partsdata ADD  PartsData_idPartsData INTEGER;

ALTER TABLE userstatus ADD StaNum INTEGER;
ALTER TABLE pcadlib DROP COLUMN PCADpart_idPCADpart;

UPDATE partsubtype SET Pic3D_idPic3D = 1  WHERE idPartSubTipe = 4;
UPDATE userstatus SET StaNum = 0  WHERE idUserStatus = 1;
SELECT * FROM pontd;
SELECT * FROM partpontd;
SELECT * FROM pcadlib;
SELECT * FROM librefs;                                                                  
INSERT INTO PartPoNTD (Parts_idParts,PartSubType_idPartSubTipe,CARTS_idCARDS,PartPoNTD,Person_idPerson,PartPoNTDDTAME) Value (1,1,66,"",1,NOW()); 