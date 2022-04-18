WITH
premier_trimestre AS (SELECT `commune`, count(*) AS trim1   FROM ventes, bien, commune
WHERE `Date mutation` <= "2020-03-31" AND `Date mutation` >= "2020-01-01"
AND `ventes`.`bien_id` = `bien`.`bien_id`
AND `bien`.`id_commune` = `commune`.`id_commune`
GROUP BY `commune`),


second_trimestre AS  (SELECT `commune`, count(*) AS trim2 FROM ventes, bien, commune
WHERE `Date mutation` <= "2020-06-30" AND `Date mutation` >= "2020-04-01"
AND `ventes`.`bien_id` = `bien`.`bien_id`
AND `bien`.`id_commune` = `commune`.`id_commune`
GROUP BY `commune`)


SELECT premier_trimestre.commune, ((trim2-trim1)/trim1)*100 AS "Taux d'évolution" FROM premier_trimestre, second_trimestre
WHERE second_trimestre.`commune` = premier_trimestre.`commune`
GROUP BY premier_trimestre.commune
HAVING `Taux d'évolution` >= 20.00;
