CREATE TABLE commune SELECT DISTINCT `Code departement` * 1000 + `Code commune` AS id_commune, commune FROM projet_immo.raw;