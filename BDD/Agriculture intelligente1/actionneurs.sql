CREATE TABLE actionneurs (
    id_actionneur SERIAL PRIMARY KEY,
    type actionneur_type NOT NULL,
    nom_actionneur VARCHAR(100) NOT NULL,
    etat BOOLEAN DEFAULT FALSE
    );