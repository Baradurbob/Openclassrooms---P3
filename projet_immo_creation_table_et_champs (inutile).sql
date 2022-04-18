CREATE TABLE adresse (

id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
numéro_voie INTEGER NOT NULL,
type_voie VARCHAR(50),
voie VARCHAR(50),
code_postal INTEGER NOT NULL,
Département INTEGER NOT NULL,
commune VARCHAR(200)

);

CREATE TABLE Ventes (

vente_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
date_transaction DATETIME,
nature_transaction VARCHAR(50),
valeur_foncière INTEGER NOT NULL

);

CREATE TABLE detail_bien (


id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
surface_carrez_premier_lot DOUBLE NOT NULL,
nb_lot INTEGER NOT NULL,
type_local VARCHAR(100),
surface_réelle_bâtie INTEGER NOT NULL,
nb_pièces_principales INTEGER NOT NULL,
FK_type_local_id INTEGER,
FK_id_commune bigint,
FK_vente_id INTEGER,
FOREIGN KEY (`FK_type_local_id`) REFERENCES t_local (`type_local_id`),
FOREIGN KEY (`FK_id_commune`) REFERENCES commune (`id_commune`),
FOREIGN KEY (`FK_vente_id`) REFERENCES ventes (`vente_id`)

);
 