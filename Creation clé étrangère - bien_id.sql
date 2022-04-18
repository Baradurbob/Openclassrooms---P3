CREATE TABLE bien SELECT DISTINCT `Type local`, `Surface Carrez du 1er lot`, `Nombre pieces principales` FROM raw;
ALTER TABLE bien ADD `bien_id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY;