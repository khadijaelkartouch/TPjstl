creation de la base de donnée 
-- Créer la base de données
CREATE DATABASE TestDB;

-- Utiliser la base de données
USE TestDB;

-- Créer la table utilisateurs
CREATE TABLE utilisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insérer des données d'exemple
INSERT INTO utilisateurs (nom, prenom, email) VALUES
('Dupont', 'Jean', 'jean.dupont@email.com'),
('Martin', 'Marie', 'marie.martin@email.com');
