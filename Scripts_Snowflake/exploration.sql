USE DATABASE panicattack;


--Exploration des données
SELECT * FROM panic_attack_data;

/* Check des nulls sur l'di*/
SELECT * FROM panic_attack_data WHERE id IS NULL;
--Pas de null

/* Check des doublons sur l'id */
SELECT 
    id,
    COUNT(id) as check_doublons
FROM panic_attack_data
GROUP BY id
HAVING COUNT(id) > 1;
--Pas de doublons
--On aurait aussi pu faire un trie (DESC) pour voir s'il y'a des valeurs > 1

/* Nombre de patient par genre */
SELECT
    gender,
    COUNT(id) AS nbre_patient
FROM panic_attack_data
GROUP BY gender
ORDER BY COUNT(id) DESC ;

/* Le nombre de patient en fonction des déclencheurs */

SELECT
    trigger_reason,
    COUNT(id) AS nbre_patient
FROM panic_attack_data
GROUP BY trigger_reason
ORDER BY COUNT(id) DESC;

/* Patient/Antécedents médicaux */
SELECT 
    medical_history,
    COUNT(id) AS nbre_patient
FROM panic_attack_data
GROUP BY medical_history
ORDER BY nbre_patient DESC;

/* Le nbre de patient suivant une therapie */
SELECT
    therapy,
    COUNT(id) AS nbre_patient
FROM panic_attack_data
GROUP BY therapy
ORDER BY nbre_patient DESC;

/* Patient le plus jeune, patient le plus agé & l'âge moyen*/
SELECT
    MIN(age) AS plus_jeune_patient,
    MAX(age) AS plus_vieux_patient,
    ROUND(AVG(age), 0) AS age_moyen
FROM panic_attack_data;

/* Nbre patient par fréquence des attaques et par genre*/

SELECT
    panci_attack_frequency,
    gender,
    count(id) AS nrb_patient
FROM panic_attack_data
GROUP BY panci_attack_frequency, gender
ORDER BY panci_attack_frequency, gender;
