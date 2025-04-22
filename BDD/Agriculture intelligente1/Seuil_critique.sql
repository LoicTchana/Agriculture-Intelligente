CREATE TABLE seuils (
    id_seuil SERIAL PRIMARY KEY,
    id_utilisateur INT NOT NULL,
    id_capteur INT NOT NULL,
    seuil_min FLOAT NOT NULL,
    seuil_max FLOAT NOT NULL,
    CONSTRAINT fk_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur) ON DELETE CASCADE,
    CONSTRAINT fk_capteur FOREIGN KEY (id_capteur) REFERENCES capteurs(id_capteur) ON DELETE CASCADE,
    CONSTRAINT unique_seuil UNIQUE (id_utilisateur, id_capteur),
    CONSTRAINT check_seuil CHECK (seuil_min < seuil_max)
);
