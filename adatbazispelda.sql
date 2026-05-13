CREATE DATABASE IF NOT EXISTS PeldaDB;
USE PeldaDB;

CREATE TABLE IF NOT EXISTS Felhasznalok (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nev VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Kor INT CHECK (Kor >= 18)
);

INSERT INTO Felhasznalok (Nev, Email, Kor) VALUES 
('Kovács János', 'janos@email.hu', 28),
('Nagy Anna', 'anna@email.hu', 32);

SELECT * FROM Felhasznalok;