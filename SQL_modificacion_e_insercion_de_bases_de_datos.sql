-- Incluir 2 columnas en la Tabla zapatillas 
USE `tienda_zapatillas`;

ALTER TABLE `zapatillas`
ADD COLUMN `marca` VARCHAR (45) NOT NULL;

ALTER TABLE `zapatillas`
ADD COLUMN `talla` INT NOT NULL; 

-- Incluir 2 columnas en la Tabla empleados

ALTER TABLE `empleados`
MODIFY COLUMN `salario` FLOAT NOT NULL; -- hemos quitado el NULL

-- OTRA FORMA DE AÑADIR FLOAT ES CON DECIMAL (digitos antes del decimal (ponemos los max digitos q pueden ir antes del decimal) y después el nro de decimales q queremos)
-- ALTER TABLE `empleados`
-- MODIFY COLUMN `salario` DECIMAL (5,2) NOT NULL;

-- Eliminar columna

ALTER TABLE `clientes`
DROP COLUMN `pais`;

-- Añadir columna
ALTER TABLE `facturas`
ADD COLUMN `total` FLOAT;

-- Añadir datos
INSERT INTO `zapatillas` (`id_zapatilla`, `modelo`, `color`, `marca`, `talla`)
VALUES (1, "XQYUN", "Negro", "Nike", 42), 
(2, "UOPMN", "Rosas", "Nike", 39),
(3, "OPNYT", "Verdes", "Adidas", 35);

INSERT INTO `empleados` (`id_empleado`, `nombre`, `tienda`, `salario`, `fecha_incorporacion`)
VALUES (1, "Laura", "Alcobendas", 25987, "2010-09-03"), 
(2, "Maria", "Sevilla", 0 , "2001-04-11"),
(3, "Ester", "Oviedo", 30165.98, "2000-11-29"); -- no nos sale el decimal en la tabla

INSERT INTO `clientes` (`id_cliente`, `nombre`, `numero_telefono`, `email`, `direccion`, `ciudad`, `provincia`, `codigo_postal`)
VALUES (1, "Monica", 1234567289, "monica@email.com", "Calle Felicidad", "Mostoles", "Madrid", 28176), 
(2, "Lorena", 289345678, "lorena@email.com", "Calle Alegría", "Barcelona", "Barcelona", 12346),
(3, "Carmen", 298463759, "carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", 28176);

INSERT INTO `facturas` (`id_factura`, `numero_factura`,`fecha`,`id_zapatilla`,`id_cliente`,`id_empleado`,`total`)
VALUES (1, 123, "2001-12-11", 1, 2, 1,  54.98), 
(2, 1234, "2005-05-23", 1, 1, 3,  89.91),
(3, 12345, "2015-09-18", 2, 3, 3,  76.23);

-- Actualización datos
UPDATE `zapatillas`
SET `color` = 'Amarillo'
WHERE `color` = 'Rosas';

UPDATE `empleados`
SET `tienda` = 'A Coruña'
WHERE `tienda` = 'Alcobendas';

UPDATE `clientes`
SET `numero_telefono` = '123456728'
WHERE `id_cliente` = 1;

UPDATE `facturas`
SET `total` = 89.91
WHERE `id_zapatilla` = 2;





