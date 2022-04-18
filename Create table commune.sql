DROP TABLE IF EXISTS commune;

CREATE TABLE commune SELECT DISTINCT `Code departement` * 1000 + `Code commune` AS id_commune, commune, `Code departement` FROM projet_immo.raw;