SELECT  `Date mutation`, `Valeur fonciere`, `bien_id` from raw, bien
WHERE `bien`.`Voie` = raw.Voie
 AND `bien`.`SC` = `raw`.`Surface Carrez du 1er lot`
 AND `bien`.`SR` = `raw`.`Surface reelle bati`;