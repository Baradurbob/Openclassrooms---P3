
WITH
table_moyenne_commune AS (SELECT commune, `Code departement`, AVG(`Valeur fonciere`) AS moyenne_commune FROM ventes, commune, bien
WHERE `ventes`.`bien_id` = `bien`.`bien_id`
AND  `bien`.`id_commune` = `commune`.`id_commune`
AND `Code departement` IN (6,13,33,59,69)
GROUP BY commune
ORDER BY commune),

table_classement_commune 
	AS (SELECT `commune`, `Code departement`, `moyenne_commune`, RANK() OVER ( PARTITION BY `Code departement` ORDER BY `moyenne_commune` DESC ) AS classement_commune   
    FROM table_moyenne_commune)

SELECT * FROM  table_classement_commune
WHERE classement_commune <= 3;

