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

-- exercitii_count_sum.sql

-- Selecteaza baza de date
USE magazin;

-- 1. Cate produse exista in total?
SELECT COUNT(*) AS total_produse FROM produse;

-- 2. Cate produse au stoc mai mare de 0?
SELECT COUNT(*) AS produse_in_stoc
FROM produse
WHERE stoc > 0;

-- 3. Care este stocul total (suma tuturor cantitatilor)?
SELECT SUM(stoc) AS total_bucati_in_stoc FROM produse;

-- 4. Care este valoarea totala a produselor din stoc?
SELECT SUM(pret * stoc) AS valoare_totala_stoc
FROM produse;

-- 5. Cate produse au pret mai mare de 5 lei?
SELECT COUNT(*) AS produse_mai_scumpe_de_5
FROM produse
WHERE pret > 5;

-- 6. Care este suma tuturor preturilor (indiferent de stoc)?
SELECT SUM(pret) AS suma_totala_preturi
FROM produse;
