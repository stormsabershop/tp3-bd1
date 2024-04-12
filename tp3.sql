CREATE DATABASE TP3jeromeOuelletRafaelMatias;

CREATE TABLE article
(
art_code			VARCHAR(4) 		NOT NULL,
art_nom				VARCHAR(20) 	NOT NULL,
art_prix			REAL(9,2) 		NULL,
art_qte 			INT(8) 			NULL,

CONSTRAINT 			pk_art_code		PRIMARY KEY (art_code),
CONSTRAINT			uk_art_nom		UNIQUE (art_nom)
);

CREATE TABLE lignecmd
(
lig_num				INT(2)			NOT NULL,
lig_com_num			INT(4)			NOT NULL,
lig_art_code		VARCHAR(4)		NOT NULL,
lig_qte				INT(3)          NULL,
lig_art_prix		REAL(9,2)       NULL,

CONSTRAINT			pk_lig_com_num  PRIMARY KEY (lig_num, lig_com_num),
CONSTRAINT 			fk_lig_com_num  FOREIGN KEY (lig_com_num),
CONSTRAINT			fk_lig_art_code FOREIGN KEY (lig_art_code)
);





 
