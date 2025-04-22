CREATE TABLE utilisateurs (
    id_utilisateur SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    mot_de_passe VARCHAR(255),
    role role_type NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);