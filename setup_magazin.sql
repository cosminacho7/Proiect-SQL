-- setup_magazin.sql

-- Creeaza baza de date daca nu exista
CREATE DATABASE IF NOT EXISTS magazin;
USE magazin;

-- Sterge tabelul daca exista deja
DROP TABLE IF EXISTS produse;

-- Creeaza tabelul 'produse'
CREATE TABLE produse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nume VARCHAR(100),
    pret DECIMAL(10,2),
    stoc INT
);

-- Insereaza cateva produse
INSERT INTO produse (nume, pret, stoc)
VALUES 
('Lapte', 6.50, 20),
('Paine', 3.00, 50),
('Cafea', 18.90, 15),
('Ciocolata', 5.20, 0),
('Orez', 7.30, 30);
