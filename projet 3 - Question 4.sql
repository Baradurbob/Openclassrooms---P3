SELECT `Code departement`, `Valeur fonciere`, `t_local`.`type_local_id`, `SC`, AVG((`Valeur fonciere`/`SC`)) AS p_moy_m2_idf FROM ventes, bien, commune, t_local
WHERE `bien`.`bien_id` = `ventes`.`bien_id`
AND `bien`.`id_commune` = `commune`.`id_commune`
AND `t_local`.`type_local_id` = `bien`.`type_local_id`
AND `Code departement` IN(78, 95, 91, 77, 75, 92, 93, 94)
AND `t_local`.`type_local_id` = 2;


