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
<img width="959" height="423" alt="image" src="https://github.com/user-attachments/assets/4ec83ed9-ba38-46f5-802f-087d520567d4" />
<img width="959" height="479" alt="image" src="https://github.com/user-attachments/assets/aba71a84-e220-4b6e-918e-7197b1d8f0bd" />
<img width="959" height="472" alt="image" src="https://github.com/user-attachments/assets/865189db-c2c4-4f29-9842-61c137684078" />




