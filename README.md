# Panic-Attack-Analyse

Les crises de panique sont souvent liées à des facteurs comme le sommeil, a caféine, l’alcool, l’âge ou des troubles psychologiques. L’objectif de ce projet est de comprendre :

- Quels facteurs sont associés à une fréquence plus élevée de crises
- Quels profils de patients sont les plus exposés
- Quels symptômes sont les plus fréquents

<img width="1878" height="997" alt="Image" src="https://github.com/user-attachments/assets/c265f4e1-48c7-4e3b-b33f-d17f3b73bc68" />

----
## 🔄 Pipeline :
Les données brutes (fichier CSV) ont été chargées dans **Snowflake**, qui a servi d’entrepôt de données central. Après ingestion, les données ont été explorées et préparées via des requêtes **SQL**.

**Snowflake** a ensuite été connecté à **Power BI** en mode import afin de créer un modèle analytique. Les transformations finales ont été réalisées dans **Power Query**, puis des mesures **DAX** ont été créées pour alimenter les **visualisations**.

<img width="1913" height="843" alt="Image" src="https://github.com/user-attachments/assets/c444d5b4-60ad-45b4-91bc-19ea44c00c92" />

----
## ⭐ Particularités du projet :

- Ingestion des données dans Snowflake
- Analyse exploratoire (SQL)
- Connexion avec Power BI
- Transformation des données dans Power Query
- Création de mesures DAX
- Filtres dynamiques (genre, causes, historique médical, etc.)

----
## 📊 Ce que montre l’analyse :

L’analyse met en évidence plusieurs tendances :

- Les patients dormant peu présentent plus souvent des crises de panique
- La consommation de caféine est associée à des scores de panique plus élevés
- Les patients ayant des troubles comme la phobie, l’anxiété ou le PTSD ont des crises plus fréquentes
- Les adolescents ont, en moyenne, un score de panique plus élevé que les adultes
- Certains symptômes comme l’essoufflement, la transpiration et les douleurs thoraciques sont particulièrement répandus chez les patients les plus affectés

----
## 🛠️ Outils & Méthodes :

**Outils :**

- Snowflake : stockage, ingestion, EDA (SQL)
- Power Query : nettoyage et transformation
- DAX : mesures et indicateurs
- Power BI : Visualisations

**Méthodes :**

- Analyse exploratoire des données (EDA)
- Segmentation par âge, genre, causes, symptomes et antécédents
- Comparaison de moyennes
- Visualisation interactive orientée décisionnel

----
## Annexes

**Gestion erreurs au chargement des données : Pb de matching des colonnes**
Le problème venait du fait que certaines colonnes de fichiers csv avaient des noms différents par rapport à ce qu'il y avait dans ma table. 

<img width="1592" height="722" alt="Image" src="https://github.com/user-attachments/assets/642598a1-a30e-4426-a6a2-5fefb18b0618" />

**Power Query : Transformation des données**

<img width="1910" height="986" alt="Image" src="https://github.com/user-attachments/assets/dbd1a844-f623-47c3-ad7b-b167cf3a35e3" />
