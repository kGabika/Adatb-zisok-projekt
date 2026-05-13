CREATE DATABASE IF NOT EXISTS iskola_db
CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

USE iskola_db;

DROP TABLE IF EXISTS jelentkezesek;
DROP TABLE IF EXISTS diakok;

CREATE TABLE diakok (
    id INT PRIMARY KEY,                      
    nev VARCHAR(50) NOT NULL,                
    email VARCHAR(100) UNIQUE,                
    eletkor INT CHECK (eletkor >= 18),        
    statusz VARCHAR(20) DEFAULT 'aktív'      
);

CREATE TABLE jelentkezesek (
    jelentkezes_id INT PRIMARY KEY,          
    diak_id INT,                              
    FOREIGN KEY (diak_id) REFERENCES diakok(id)
);

INSERT INTO diakok (id, nev, email, eletkor, statusz)
VALUES (1, 'Kovács Péter', 'peter@example.com', 20, 'aktív');

INSERT INTO diakok (id, nev, email, eletkor)
VALUES (2, 'Nagy Anna', 'anna@example.com', 19);

INSERT INTO jelentkezesek (jelentkezes_id, diak_id) VALUES (101, 1);
INSERT INTO jelentkezesek (jelentkezes_id, diak_id) VALUES (102, 2);

INSERT INTO diakok (id, nev, email, eletkor)
VALUES (3, 'Szabó Gábor', 'gabor@example.com', 22);

INSERT INTO diakok (id, nev, email, eletkor)
VALUES (4, 'Kovács Kitti', 'kitti@example.com', 21);

INSERT INTO diakok (id, nev, email, eletkor)
VALUES (5, 'Tóth Zoltán', 'zoltan@example.com', 25);

INSERT INTO diakok (id, nev, email, eletkor)
VALUES (6, 'Kis Bence', 'bence@example.com', 18);

INSERT INTO jelentkezesek (jelentkezes_id, diak_id)
VALUES (103, 3);

SELECT * FROM diakok;
SELECT * FROM jelentkezesek;