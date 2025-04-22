-- Insertion des utilisateurs
INSERT INTO utilisateurs (nom, email, mot_de_passe, role) VALUES

('Schulde Sado', 'schulde.sado@2028.ucac-icam.com', '1234', 'agriculteur'),
('Basile Fouda', 'Basile.fouda@2028.ucac-icam.com', '1234', 'agriculteur'),
('Ange Soumegne', 'ange.Soumegne@2028.ucac-icam.com', '1234', 'agriculteur');

INSERT INTO utilisateurs (nom, email, mot_de_passe, role) VALUES
('Loic Tchana ', 'loictchana008@gmail.com', 'Azerty', 'admin');

INSERT INTO utilisateurs (nom, email, mot_de_passe, role) VALUES
('Loicà ', 'loictchana08@gmail.com', 'Aerty', 'agriculteur');

INSERT INTO utilisateurs (nom, email, mot_de_passe, role) VALUES
('Loiià ', 'loictchana8@gmail.com', 'Aerty', 'agriculteur');

UPDATE utilisateurs
SET mot_de_passe = '$2y$10$wxlzH7m0x1mGCFJ2b8zYTuBqR60LxHKn3h69E89EXp57HdH3GUXA2'
WHERE email = 'loictchana8@gmail.com';


-- Insertion des capteurs
INSERT INTO capteurs (type, nom_capteur) VALUES
('humidite_sol', 'YL-69'),
('temperature', 'DHT22'),
('co2', 'SEN0159'),
('luminosite', 'BH1750'),
('niveau_eau', 'niveau_eau_reservoir');
-- Insertion des actionneurs
INSERT INTO actionneurs (type, nom_actionneur, etat) VALUES
('arrosage automatique', 'Pompe d’irrigation principale', TRUE),
('arrosage automatique', 'Pompe d’irrigation secondaire', FALSE),
('declenchement de ventilation', 'Ventilateur Serre A', TRUE),
('declenchement de ventilation', 'Ventilateur Serre B', FALSE),
('eclairage', 'Lumières Serre A', TRUE),
('eclairage', 'Lumières Serre B', FALSE);
-- Insertion des mesures
INSERT INTO mesures (id_capteur, type_capteur, valeur, unite, date_relevee) VALUES
(1, 'humidite_sol', 28.5, '%', '2025-03-25 08:00:00'),
(2, 'temperature', 30.2, '°C', '2025-03-25 08:00:00'),
(3, 'co2', 450, 'ppm', '2025-03-25 08:00:00'),
(1, 'humidite_sol', 26.0, '%', '2025-03-25 10:00:00'),
(2, 'temperature', 32.1, '°C', '2025-03-25 10:00:00');
-- Insertion des alertes
INSERT INTO alertes (id_capteur, type_alerte, message, etat) VALUES
(1, 'seuil_humidite', 'nécessité d’irrigation', TRUE),
(2, 'temperature_elevee', 'risque pour les cultures', TRUE),
(3, 'co2_trop_haut', 'besoin d’aération', FALSE),
(4, 'Luminosite_basse', 'nécessité d’allumer les lumières', FALSE),
(5, 'reservoir_vide', 'intervention requise', TRUE);

-- Insertion des actions dans l'historique
INSERT INTO historique_actions (id_actionneur, action, id_utilisateur, date_action) VALUES
(1, 'activation', 2, '2025-03-25 08:05:00'),
(2, 'désactivation', 2, '2025-03-25 08:10:00'),
(3, 'activation', 3, '2025-03-25 08:15:00'),
(4, 'désactivation', 3, '2025-03-25 08:20:00'),
(5, 'activation', 2, '2025-03-25 08:30:00'),
(6, 'désactivation', 3, '2025-03-25 08:40:00');
-- Insertion des seuils définis par les utilisateurs
INSERT INTO seuils (id_utilisateur, id_capteur, seuil_min, seuil_max) VALUES
(4, 1, 20.0, 40.0),  -- Ange définit un seuil pour humidité du sol (YL-69)
(2, 2, 15.0, 35.0),  -- Basile définit un seuil pour température (DHT22)
(3, 3, 300.0, 600.0),  -- basile définit un seuil pour CO2 (SEN0159)
(4, 4, 100.0, 500.0),  -- Ange définit un seuil pour luminosité (BH1750)
(2, 5, 10.0, 90.0);  -- Schulde définit un seuil pour niveau d'eau (réservoir)
