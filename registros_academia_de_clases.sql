INSERT INTO empresa VALUES
('12345678V','T-Systems',346932514,'Reus Calle la piedra 23'),
('12345679V','Dapsa',346932515,'Amposta Calle loro S/N'),
('12345671V','Colsa',346932516,'Paterna Poligono Ind. fuente el Jarro'),
('12345672V','Diusframi',346932517,'Madrid Avendia Industria'),
('12345673V','Lamigraf',346932518,'Carrer Mas Dorca, 14, 08480 L\'Ametlla del Vallès, Barcelona');
SELECT * FROM empresa;
INSERT INTO alumno VALUES 
('12345684V','Jose A',346932514,'L\'Ampolla',39,'12345678V'),
('12345685V','Jose',346932515,'Paterna Poligono Ind. fuente el Jarro',28,'12345679V'),
('12345686V','Daniel',346932516,'Tarragona',25,'12345671V'),
('12345687V','Joan',346932517,'Reus Calle la piedra 23',23,'12345672V'),
('12345688V','Miguel',346932518,'Carrer Mas Dorca, 14, 08480 L\'Ametlla del Vallès, Barcelona',26,'12345673V');
SELECT * FROM alumno;
INSERT INTO profesor VALUES 
('13345684V','Jose A','González',346932514,'L\'Ampolla Ramon Llull'),
('14345685V','Jose','Martinez',346932515,'Paterna Poligono Ind. fuente el Jarro'),
('15345686V','Daniel','Fernandez',346932516,'Tarragona Carrer Mas Dorca, 24, 08480'),
('16345687V','Joan','Hurtado',346932517,'Reus Carrer Mas Dorca, 14'),
('17345688V','Miguel','Alcántara',346932518,'Calle la piedra 08480 L\'Ametlla del Vallès, Barcelona');
SELECT * FROM profesor;
INSERT INTO programa VALUES 
(NULL,'JR09458', 'Fundamentos Ingeniería', DATE(01-05-2022), DATE(30-06-2022), DEFAULT);
#DELETE FROM empresa WHERE cif = '12345688V';
#SELECT * FROM alumno;
