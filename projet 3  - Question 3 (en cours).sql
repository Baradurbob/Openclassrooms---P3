SELECT SC, `Code departement` FROM raw, bien
WHERE `Code departement` = 6 OR `Code departement` = 13 OR `Code departement` = 33 OR `Code departement` = 59 OR `Code departement` = 69
AND `raw`.`vente_id` = `bien`.`vente_id`;