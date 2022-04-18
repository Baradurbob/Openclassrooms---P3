WITH 
prix_t2 AS (SELECT `SC`, `NB_piece`, `bien`.`type_local_id`, `Valeur fonciere` FROM bien, t_local, ventes
WHERE `bien`.`type_local_id` = 1
AND `bien`.`type_local_id` = `t_local`.`type_local_id`
AND `ventes`.`bien_id` = `bien`.`bien_id`
AND `bien`.`NB_piece` = 2),



prix_t3 AS ( SELECT `SC`, `NB_piece`, `bien`.`type_local_id`, `Valeur fonciere` FROM bien, t_local, ventes
WHERE `bien`.`type_local_id` = 1
AND `bien`.`type_local_id` = `t_local`.`type_local_id`
AND `ventes`.`bien_id` = `bien`.`bien_id`
AND `bien`.`NB_piece` = 3),

A1 AS (SELECT AVG((`Valeur fonciere`/`SC`)) AS p_m2_t2 FROM prix_t2),

A2 AS (SELECT AVG((`Valeur fonciere`/`SC`)) AS p_m2_t3 FROM prix_t3)

SELECT ROUND(((p_m2_t3-p_m2_t2)/p_m2_t2)*100,2) AS diff_t2_t3 FROM A1, A2;