CREATE DATABASE entreprise;

USE entreprise;

CREATE TABLE employe (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    salaire DECIMAL(10, 2),
    id_service INT
);

INSERT INTO employe (nom, prenom, salaire, id_service) VALUES
('Doe', 'John', 3500.00, 1),
('Smith', 'Alice', 2800.00, 2),
('Johnson', 'Bob', 3200.00, 1),
('Brown', 'Emily', 4000.00, 3);

SELECT * FROM employe WHERE salaire > 3000.00;

CREATE TABLE service (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255)
);

INSERT INTO service (nom) VALUES
('RH'),
('Informatique'),
('Comptabilité');

SELECT employe.nom, employe.prenom, employe.salaire, service.nom AS service
FROM employe
JOIN service ON employe.id_service = service.id;