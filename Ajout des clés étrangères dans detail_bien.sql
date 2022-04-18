ALTER TABLE detail_bien 
ADD FK_type_local_id INTEGER,
ADD FK_id_commune bigint,
ADD FK_vente_id INTEGER;

 
ALTER TABLE detail_bien 
ADD FOREIGN KEY (`FK_type_local_id`) REFERENCES t_local (`type_local_id`),
ADD FOREIGN KEY (`FK_id_commune`) REFERENCES commune (`id_commune`),
ADD FOREIGN KEY (`FK_vente_id`) REFERENCES ventes (`vente_id`);