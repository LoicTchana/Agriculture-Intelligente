CREATE TABLE mesures (
    id_mesure SERIAL PRIMARY KEY,
    id_capteur INT NOT NULL,
    type_capteur capteur_type NOT NULL,
    valeur FLOAT NOT NULL,
    unite VARCHAR(10) NOT NULL,
    date_relevee TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_capteur) REFERENCES capteurs(id_capteur) ON DELETE CASCADE
);
