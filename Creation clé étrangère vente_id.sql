CREATE TABLE vente_bien SELECT DISTINCT `Date mutation`, `Valeur fonciere` FROM raw; 
ALTER TABLE vente_bien ADD `vente_id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY;