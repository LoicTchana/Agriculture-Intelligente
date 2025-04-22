-- Domaine pour le rôle des utilisateurs
CREATE DOMAIN role_type AS VARCHAR(20)
CHECK (VALUE IN ('admin', 'agriculteur'));

-- Domaine pour le type d’actionneur
CREATE DOMAIN actionneur_type AS VARCHAR(100)
CHECK (VALUE IN ('arrosage automatique', 'declenchement de ventilation', 'eclairage'));

-- Domaine pour le type de capteur
CREATE DOMAIN capteur_type AS VARCHAR(100)
CHECK (VALUE IN ('humidite_sol', 'temperature', 'co2', 'luminosite', 'niveau_eau'));

--Domaine pour le Nom des capteurs
CREATE DOMAIN Nom_capteur AS VARCHAR(20)
CHECK (VALUE IN ('YL-69', 'DHT22', 'SEN0159', 'BH1750', 'niveau_eau_reservoir'));

-- Domaine pour le type d’alerte
CREATE DOMAIN alerte_type AS VARCHAR(100)
CHECK (VALUE IN ('seuil_humidite', 'temperature_elevee', 'co2_trop_haut', 'Luminosite_basse', 'reservoir_vide'));


-- Domaine pour le type d’action dans l’historique
CREATE DOMAIN action_type AS VARCHAR(100)
CHECK (VALUE IN ('activation', 'désactivation'));

CREATE DOMAIN Message_alerte AS TEXT
CHECK (VALUE IN (
    'nécessité d’irrigation',
    'risque pour les cultures',
    'besoin d’aération',
    'nécessité d’allumer les lumières',
    'intervention requise'
));
