CREATE TABLE alertes (
    id_alerte SERIAL PRIMARY KEY,
    id_capteur INT NOT NULL,
    type_alerte alerte_type NOT NULL,
    message Message_alerte NOT NULL,
    etat BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_capteur) REFERENCES capteurs(id_capteur) ON DELETE CASCADE
);
