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
lig_num				INT(2)			NULL,
lig_com_num			
lig_art_code
lig_qte
lig_art_prix





 
