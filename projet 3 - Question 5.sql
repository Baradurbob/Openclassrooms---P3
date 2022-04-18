SELECT `bien`.`type_local_id`, `bien`.`SC`, `ventes`.`Valeur fonciere`, `commune`.`Code departement`  FROM bien, commune, ventes
WHERE `bien`.`id_commune` = `commune`.`id_commune`
AND `bien`.`bien_id` = `ventes`.`bien_id`
AND `bien`.`type_local_id` = 1
ORDER BY `Valeur fonciere` DESC
LIMIT 10;