DROP TABLE IF EXISTS ventes;

CREATE TABLE ventes (vente_id INTEGER NOT NULL auto_increment, PRIMARY KEY (vente_id))

(SELECT  DISTINCT `Date mutation`, `Valeur fonciere`, `bien_id` FROM raw, bien, commune
WHERE `bien`.`Voie` = `raw`.`Voie`
AND `bien`.`id_commune` = `commune`.`id_commune` 
AND `commune`.`commune` = `raw`.`Commune`
AND `bien`.`1er lot` = `raw`.`1er lot`);


