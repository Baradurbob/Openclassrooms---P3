SELECT commune, `Code departement`, AVG(`Valeur fonciere`) OVER (PARTITION BY commune) AS moy_commune FROM ventes, commune, bien
WHERE `ventes`.`bien_id` = `bien`.`bien_id`
AND  `bien`.`id_commune` = `commune`.`id_commune`
AND `Code departement` IN (6,13,33,59,69);