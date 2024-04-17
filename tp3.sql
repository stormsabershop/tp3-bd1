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

INSERT INTO CLIENTELLE (cli_num, cli_nom, cli_prenom, cli_solde, cli_ville) 
VALUES 
(1010, 'Tremblay', 'Jean', 152.50, 'Québec'),
(1020, 'Gagnon', 'Julie', 325.00, NULL),
(1030, 'Bolduc', 'André', 0, 'Thetford Mines'),
(1040, 'Viger', 'Annie', 25.30, NULL),
(1050, 'Plamondon', 'Lucie', -1000.00, 'Montréal');

INSERT INTO COMMANDE (com_num, com_date, com_total, com_rabais, com_cli_num) 
VALUES 
(1000, STR_TO_DATE('30-05-2023', '%d-%m-%Y'), 230.00, 5, 1010),
(1001, STR_TO_DATE('12-06-2022', '%d-%m-%Y'), 0.40, 0, 1020),
(1002, STR_TO_DATE('25-01-2024', '%d-%m-%Y'), 22250.00, 97, 1030),
(1003, STR_TO_DATE('18-09-2022', '%d-%m-%Y'), 25.00, NULL, 1040),
(1004, STR_TO_DATE('05-11-2023', '%d-%m-%Y'), 88.50, NULL, 1050);

INSERT INTO ARTICLE (art_code, art_nom, art_prix, art_qte) 
VALUES 
('AF10', 'Marteau', 22.50, 50),
('AB21', 'Clou', 0.10, 50),
('CF02', 'Planche', 215.00, 300),
('ED03', 'Tournevis', 25.10, 150),
('JK04', 'Scie', 22.00, 30);

INSERT INTO LIGNECMD (lig_num, lig_com_num, lig_art_code, lig_qte, lig_art_prix) 
VALUES 
(1, 1000, 'AF10', 10, 22.00),
(2, 1000, 'AB21', 100, 0.10),
(1, 1001, 'AB21', 4, 0.10),
(1, 1002, 'CF02', 100, 210.00),
(2, 1002, 'ED03', 50, 25.00),
(1, 1003, 'ED03', 1, 25.00),
(1, 1004, 'AB21', 5, 0.10),
(2, 1004, 'AF10', 4, 22.00);

CREATE TABLE ArticleTemp like article;

INSERT INTO ArticleTemp SELECT * FROM article;

SELECT * FROM ArticleTemp;


SELECT art_nom, art_code, format(art_prix * 1.10, 3) AS "PrixPlus10%", art_qte FROM ArticleTemp; 

SELECT * FROM commande WHERE com_date substr





 




 
