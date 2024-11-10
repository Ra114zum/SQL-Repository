DROP TABLE IF EXISTS stocks, meta;

CREATE TABLE stocks (
	id INT,
	symbol VARCHAR(6),
    date_day DATE,
    mid_value INT,
    end_value INT,
    PRIMARY KEY (id));
    
CREATE TABLE meta (
	symbol VARCHAR(6),
    descriptions TEXT,
    PRIMARY KEY (symbol));
    
    
INSERT INTO meta
VALUES ('SEARL','The SEARL Company Limited');

INSERT INTO meta
VALUES ('HUBC','HUB Power Company Limited');

INSERT INTO meta
VALUES ('PRL','Pakistan Refinery Limited');

INSERT INTO meta
VALUES ('MLCF','Maple Leaf Cement Factory');

INSERT INTO meta
VALUES ('ATRL','Attock Refinery Limited');

SELECT symbol AS SYM ,descriptions AS des
FROM meta;

ALTER TABLE stocks
MODIFY mid_value DECIMAL(10,2);

ALTER TABLE stocks
MODIFY end_value DECIMAL(10,2);

INSERT INTO stocks
VALUES (1,'SEARL','2024-08-17',65.5,63.25);

INSERT INTO stocks
VALUES (2,'HUBC','2024-08-17',100.70,97.36);

INSERT INTO stocks
VALUES (3,'PRL','2024-08-17',25.90,26.45);

INSERT INTO stocks
VALUES (4,'MLCF','2024-08-17',38.10,37.81);

INSERT INTO stocks
VALUES (5,'ATRL','2024-08-17',376.8,385.04);

INSERT INTO stocks
VALUES (6,'SEARL','2024-08-18',62.09,61.09);

INSERT INTO stocks
VALUES (7,'HUBC','2024-08-18',98.9,102.34);

INSERT INTO stocks
VALUES (8,'PRL','2024-08-18',25.45,23.88);

INSERT INTO stocks
VALUES (9,'MLCF','2024-08-18',37.36,37.10);

INSERT INTO stocks
VALUES (10,'ATRL','2024-08-18',389.75,386.40);

INSERT INTO stocks
VALUES (11,'SEARL','2024-08-21',61.55,60.97);

INSERT INTO stocks
VALUES (12,'HUBC','2024-08-21',103.97,103.71);

INSERT INTO stocks
VALUES (13,'PRL','2024-08-21',23.38,23.62);

INSERT INTO stocks
VALUES (14,'MLCF','2024-08-21',37.50,37.48);

INSERT INTO stocks
VALUES (15,'ATRL','2024-08-21',425.04,425.44);

INSERT INTO stocks
VALUES (16,'SEARL','2024-08-22',60.44,61.24);

INSERT INTO stocks
VALUES (17,'HUBC','2024-08-22',105.65,105.36);

INSERT INTO stocks
VALUES (18,'PRL','2024-08-22',29.92,23.72);

INSERT INTO stocks
VALUES (19,'MLCF','2024-08-22',38.10,37.89);

INSERT INTO stocks
VALUES (20,'ATRL','2024-08-22',462.50,460.22);

INSERT INTO stocks
VALUES (21,'SEARL','2024-08-25',66.71,65.72);

INSERT INTO stocks
VALUES (22,'HUBC','2024-08-25',107.55,104.61);

INSERT INTO stocks
VALUES (23,'PRL','2024-08-25',24.00,23.74);

INSERT INTO stocks
VALUES (24,'MLCF','2024-08-25',38.43,37.89);

INSERT INTO stocks
VALUES (25,'ATRL','2024-08-25',479.03,467.82);

SELECT *
FROM stocks
WHERE symbol = 'PRL';

