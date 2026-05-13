ALTER TABLE `orszagok` ADD PRIMARY KEY (`id`);

ALTER TABLE `orszagok` MODIFY `nepesseg` int(8) NOT NULL;

ALTER TABLE `orszagok` ALTER `kat` SET DEFAULT 1;

ALTER TABLE `orszagok` ADD CONSTRAINT UQ_orszag UNIQUE (`orszag`);

ALTER TABLE `orszagok` ADD CONSTRAINT CHK_terulet CHECK (`terulet` >= 0);

ALTER TABLE `orszagok` ADD CONSTRAINT FK_kontinens FOREIGN KEY (`kat`) REFERENCES `kategoriak`(`id`);

INSERT INTO `orszagok` (`orszag`, `fovaros`, `foldr_hely`, `terulet`, `nepesseg`, `penznem`) 
VALUES ('HORVÁTORSZÁG', 'ZÁGRÁB', 'Dél-Európa', 56594.00, 4200, 'euró');

SELECT `orszag`, `nepesseg` 
FROM `orszagok` 
WHERE `foldr_hely` LIKE '%Európa%' 
ORDER BY `nepesseg` DESC;

UPDATE `orszagok` 
SET `nepesseg` = 9700 
WHERE `orszag` = 'MAGYARORSZÁG';

DELETE FROM `orszagok` 
WHERE `id` = 194;