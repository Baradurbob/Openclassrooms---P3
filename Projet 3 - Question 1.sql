SELECT count(*) from ventes, bien
WHERE `Date mutation` <= '2020-06-30'
AND `Date mutation` >= '2020-01-01'
AND bien.`type_local_id` = 1
AND `ventes`.`bien_id` = `bien`.`bien_id`;