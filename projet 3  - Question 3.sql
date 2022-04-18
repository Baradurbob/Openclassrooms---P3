SELECT `Code departement`, `Valeur fonciere`, `SC`, ROUND(AVG((`Valeur fonciere`/`SC`)),2) AS p_m2 FROM ventes, bien, commune
WHERE `bien`.`bien_id` = `ventes`.`bien_id`
AND `bien`.`id_commune` = `commune`.`id_commune`
GROUP BY `Code departement`
ORDER BY p_m2 DESC
LIMIT 10;