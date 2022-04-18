
DROP TABLE IF EXISTS bien;

CREATE TABLE bien (bien_id INTEGER NOT NULL auto_increment, PRIMARY KEY(bien_id))

(SELECT DISTINCT `Voie`, raw.Commune, `1er lot`, CAST(`Surface Carrez du 1er lot` AS DOUBLE) AS SC,  `Surface reelle bati` AS SR, `Nombre pieces principales` AS NB_piece, `type_local_id`, `id_commune` FROM raw, commune, t_local
WHERE commune.commune = raw.Commune
and t_local.`Type local` = raw.`Type local`);