CREATE DATABASE TP3jeromeOuelletRafaelMatias;
USE TP3jeromeOuelletRafaelMatias;

CREATE TABLE clientelle 
(
cli_num				INT(4) NOT NULL,
cli_nom				varchar(15) NULL,
cli_prenom			varchar(15) NULL,
cli_solde    		REAL(9,2) NULL,
cli_ville			varchar(20) NULL,

CONSTRAINT 			pk_cli_num PRIMARY KEY (cli_num)
);

CREATE TABLE commande 
(
com_num				INT(4) NOT NULL,
com_date			DATE   NULL,
com_total 			REAL(9,2) NULL,
com_rabais    		REAL(9,2) NULL,
com_cli_num			INT(4) NOT NULL,

CONSTRAINT 			pk_com_num PRIMARY KEY (com_num),
CONSTRAINT          fk_com_cli_num foreign key (com_cli_num) REFERENCES clientelle (cli_num)
);

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
CONSTRAINT 			fk_lig_com_num  FOREIGN KEY (lig_com_num) REFERENCES commande (com_num),
CONSTRAINT			fk_lig_art_code FOREIGN KEY (lig_art_code) REFERENCES article (art_code)
);






 




 
