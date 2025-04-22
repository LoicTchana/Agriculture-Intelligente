CREATE TABLE historique_actions (
    id_action SERIAL PRIMARY KEY,
    id_actionneur INT NOT NULL,
    action action_type NOT NULL,
    id_utilisateur INT NULL,
    date_action TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_actionneur) REFERENCES actionneurs(id_actionneur) ON DELETE CASCADE,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur) ON DELETE SET NULL
);