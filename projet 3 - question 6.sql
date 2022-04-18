WITH
premier_semestre AS (SELECT count(*) AS nbv1 FROM ventes
WHERE `Date mutation` <= "2020-03-31" AND `Date mutation` >= "2020-01-01"),

second_semestre AS (SELECT count(*) AS nbv2 FROM ventes
WHERE `Date mutation` <= "2020-06-30" AND `Date mutation` >= "2020-04-01")

SELECT ROUND(((nbv2-nbv1)/nbv1)*100,2) AS "Taux d'évolution" FROM premier_semestre, second_semestre;