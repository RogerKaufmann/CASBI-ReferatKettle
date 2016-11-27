DROP TABLE STG_Kampagnen_Adressen;
DROP TABLE DWH_Kampagnen_Adresse;

CREATE TABLE STG_Kampagnen_Adressen (
	Name	VARCHAR(100),
	Vorname	VARCHAR(100),
	Strasse	VARCHAR(100),
	Hausnummer	VARCHAR(100),
	PLZ	VARCHAR(100),
	Ort	VARCHAR(100),
	Kanton	VARCHAR(100)
);


CREATE TABLE DWH_Kampagnen_Adresse (
	PK_Adresse INTEGER PRIMARY KEY,
	Name	VARCHAR(100),
	Strasse	VARCHAR(100),
	Nummer	INTEGER,
	Nummer_Zusatz	VARCHAR(100),
	PLZ	INTEGER,
	Ort	VARCHAR(100),
	Kanton	VARCHAR(100),
	Version INTEGER,
	ValidFrom TIMESTAMP,
	ValidTo TIMESTAMP
);

INSERT INTO DWH_Kampagnen_Adresse (PK_Adresse, Name, Strasse, Nummer, Nummer_Zusatz, PLZ, Ort, Kanton, Version, ValidFrom, ValidTo) VALUES 
 (1,'Müller, Noah',	'Bahnhofstrasse',3,NULL, 6000,'Luzern','Luzern',1,'2016-11-01','9999-12-31')
