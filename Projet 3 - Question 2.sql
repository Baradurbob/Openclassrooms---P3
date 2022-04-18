(SELECT `NB_piece`, (count(*)/(SELECT count(*) FROM ventes, bien WHERE `bien`.`bien_id` =  `ventes`.`bien_id` ))*100 AS "proportion d'appartements" from ventes, bien
WHERE `bien`.`type_local_id` = 1
AND `bien`.`bien_id` =  `ventes`.`bien_id`
GROUP BY `NB_piece`
ORDER BY `NB_piece`);

