/* Les données ont été chargé depuis un fichier en local */




--J'ai choisit d'utiliser un Warehourse que j'ai crée dans un précédent projet

--Création de la base de données
CREATE DATABASE PanicAttack;

--utiliser la DB
USE DATABASE PANICATTACK;

--Création de la table 
CREATE TABLE panic_attack_data(
    id INT,
    age INT,
    gender VARCHAR(20),
    panci_attack_frequency INT,
    duration_minutes INT,
    trigger_reason VARCHAR(50),
    heart_rate INT,
    seawting BOOLEAN,
    shortness_of_breath BOOLEAN,
    dizzines BOOLEAN,
    chest_pain BOOLEAN,
    trembling BOOLEAN,
    medical_history VARCHAR(50),
    medication BOOLEAN,
    caffeine_intake INT,
    exercise_frequency INT,
    sleep_hours number(5, 2),
    alcohol_consumption INT,
    smoking BOOLEAN,
    therapy BOOLEAN,
    panic_score INT
);

--Check la création de la table (table vide/sans donées)
SELECT  *  FROM panic_attack_data;

--Les données ont été chargées
--check sur les données
SELECT * FROM panic_attack_data;
