
create table marcas(
  id serial primary key,
  nombre varchar(100),
  estado varchar(1) default 'A',
  fecha_registro timestamp default current_timestamp
);


create table modelos(
  id serial primary key,
  nombre varchar(100) not null,
  estado varchar(1) default 'A',
  fecha_registro timestamp default current_timestamp,
  marca int not null references marcas(id)
);

create table vehiculos(
  id serial primary key,
  anio int not null,
  fecha_registro timestamp default current_timestamp,
  modelo int references modelos(id),
  estado varchar(1) default 'A'
)

CREATE TABLE continentes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    codigo CHAR(2) NOT NULL UNIQUE, -- Ej: 'EU', 'AS', etc.
    estado VARCHAR(1) DEFAULT 'A',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


create table monedas(
  id serial primary key,
  iso varchar(10) not null,
  nombre varchar(50) not null,
  signo varchar(5) not null,
  fecha_registro timestamp default current_timestamp,
  estado varchar(1) default 'A',
  cambio_dolar double precision not null,
  fecha_actuali timestamp default current_timestamp
);

CREATE TABLE paises (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    codigo_iso CHAR(2) NOT NULL UNIQUE, -- Ej: 'FR', 'US', etc.
    continente_id INT NOT NULL REFERENCES continentes(id),
    estado VARCHAR(1) DEFAULT 'A',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    moneda_id INT REFERENCES monedas(id)
);

CREATE TABLE precios_venta (
    id SERIAL PRIMARY KEY,
    vehiculo_id INT NOT NULL REFERENCES vehiculos(id),
    pais_id INT NOT NULL REFERENCES paises(id),
    precio NUMERIC(12, 2) NOT NULL, -- Precio en moneda local
    moneda_id INT NOT NULL REFERENCES monedas(id),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE, -- NULL si el precio sigue vigente
    estado VARCHAR(1) DEFAULT 'A',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ipc_mensual (
    id SERIAL PRIMARY KEY,
    pais int NOT null references paises(id),
    anio SMALLINT NOT NULL,
    mes SMALLINT NOT NULL CHECK (mes BETWEEN 1 AND 12),
    valor_ipc NUMERIC(10, 4) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(pais, anio, mes)
);


CREATE TABLE ventas_mensuales (
    id SERIAL PRIMARY KEY,
    modelo_id INT NOT NULL REFERENCES modelos(id),
    pais_id INT NOT NULL REFERENCES paises(id),
    anio INT NOT NULL,
    mes INT NOT NULL CHECK (mes >= 1 AND mes <= 12),
    cantidad_vendida INT NOT NULL DEFAULT 0,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(1) DEFAULT 'A',
    UNIQUE (modelo_id, pais_id, anio, mes))
	
	



-- Conéctate a tu base de datos (asegúrate de que ya la tengas creada)
\c metodos_numericos;

-- Desactivar temporalmente las comprobaciones de clave foránea (útil si hay dependencias circulares o para una inserción masiva, pero úsalo con precaución)
-- Aunque en este caso, insertaremos en el orden correcto, no debería ser necesario.
-- SET session_replication_role = 'replica';

-- 1. Insertar datos en la tabla 'marcas'
INSERT INTO marcas (nombre) VALUES
('Toyota'),
('Volkswagen'),
('Ford'),
('Honda'),
('Hyundai'),
('Mercedes-Benz'),
('BMW'),
('Tesla'),
('Nissan'),
('Audi');

-- 2. Insertar datos en la tabla 'modelos' (Depende de 'marcas')
-- Asumimos que los IDs de las marcas se asignan secuencialmente desde 1.
-- Es mejor obtener los IDs reales con subconsultas para mayor robustez.
INSERT INTO modelos (nombre, marca) VALUES
('Corolla', (SELECT id FROM marcas WHERE nombre = 'Toyota')),
('Camry', (SELECT id FROM marcas WHERE nombre = 'Toyota')),
('Golf', (SELECT id FROM marcas WHERE nombre = 'Volkswagen')),
('Passat', (SELECT id FROM marcas WHERE nombre = 'Volkswagen')),
('F-150', (SELECT id FROM marcas WHERE nombre = 'Ford')),
('Civic', (SELECT id FROM marcas WHERE nombre = 'Honda')),
('CR-V', (SELECT id FROM marcas WHERE nombre = 'Honda')),
('Elantra', (SELECT id FROM marcas WHERE nombre = 'Hyundai')),
('Tucson', (SELECT id FROM marcas WHERE nombre = 'Hyundai')),
('C-Class', (SELECT id FROM marcas WHERE nombre = 'Mercedes-Benz')),
('E-Class', (SELECT id FROM marcas WHERE nombre = 'Mercedes-Benz')),
('3 Series', (SELECT id FROM marcas WHERE nombre = 'BMW')),
('X5', (SELECT id FROM marcas WHERE nombre = 'BMW')),
('Model 3', (SELECT id FROM marcas WHERE nombre = 'Tesla')),
('Model Y', (SELECT id FROM marcas WHERE nombre = 'Tesla')),
('Rogue', (SELECT id FROM marcas WHERE nombre = 'Nissan')),
('Q5', (SELECT id FROM marcas WHERE nombre = 'Audi'));


-- 3. Insertar datos en la tabla 'vehiculos' (Depende de 'modelos')
INSERT INTO vehiculos (anio, modelo) VALUES
(2023, (SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1)),
(2024, (SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1)),
(2023, (SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1)),
(2024, (SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1)),
(2023, (SELECT id FROM modelos WHERE nombre = 'Model 3' LIMIT 1)),
(2024, (SELECT id FROM modelos WHERE nombre = 'Rogue' LIMIT 1));


-- 4. Insertar datos en la tabla 'continentes'
INSERT INTO continentes (nombre, codigo) VALUES
('América', 'AM'),
('Europa', 'EU'),
('Asia', 'AS'),
('África', 'AF'),
('Oceanía', 'OC');


-- 5. Insertar datos en la tabla 'monedas'
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('GTQ', 'Quetzal', 'Q', 7.75),
('BRL', 'Real Brasileño', 'R$', 4.85),
('EUR', 'Euro', '€', 0.92),
('JPY', 'Yen Japonés', '¥', 155.00),
('CNY', 'Yuan Chino', '¥', 7.25),
('INR', 'Rupia India', '₹', 83.50),
('USD', 'Dólar Estadounidense', '$', 1.00),
('CAD', 'Dólar Canadiense', 'C$', 1.37),
('KRW', 'Won Surcoreano', '₩', 1360.00);


-- 6. Insertar datos en la tabla 'paises' (Depende de 'continentes' y 'monedas')
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Guatemala', 'GT', (SELECT id FROM continentes WHERE nombre = 'América'), (SELECT id FROM monedas WHERE iso = 'GTQ')),
('Brasil', 'BR', (SELECT id FROM continentes WHERE nombre = 'América'), (SELECT id FROM monedas WHERE iso = 'BRL')),
('Alemania', 'DE', (SELECT id FROM continentes WHERE nombre = 'Europa'), (SELECT id FROM monedas WHERE iso = 'EUR')),
('Japón', 'JP', (SELECT id FROM continentes WHERE nombre = 'Asia'), (SELECT id FROM monedas WHERE iso = 'JPY')),
('China', 'CN', (SELECT id FROM continentes WHERE nombre = 'Asia'), (SELECT id FROM monedas WHERE iso = 'CNY')),
('India', 'IN', (SELECT id FROM continentes WHERE nombre = 'Asia'), (SELECT id FROM monedas WHERE iso = 'INR')),
('Italia', 'IT', (SELECT id FROM continentes WHERE nombre = 'Europa'), (SELECT id FROM monedas WHERE iso = 'EUR')),
('EE. UU.', 'US', (SELECT id FROM continentes WHERE nombre = 'América'), (SELECT id FROM monedas WHERE iso = 'USD')),
('Canadá', 'CA', (SELECT id FROM continentes WHERE nombre = 'América'), (SELECT id FROM monedas WHERE iso = 'CAD')),
('Corea del Sur', 'KR', (SELECT id FROM continentes WHERE nombre = 'Asia'), (SELECT id FROM monedas WHERE iso = 'KRW'));


-- 7. Insertar datos en la tabla 'precios_venta' (Depende de 'vehiculos', 'paises', 'monedas')
INSERT INTO precios_venta (vehiculo_id, pais_id, precio, moneda_id, fecha_inicio) VALUES
((SELECT id FROM vehiculos WHERE anio = 2023 AND modelo = (SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1) LIMIT 1),
 (SELECT id FROM paises WHERE nombre = 'Guatemala'), 150000.00,
 (SELECT id FROM monedas WHERE iso = 'GTQ'), '2023-01-01'),

((SELECT id FROM vehiculos WHERE anio = 2024 AND modelo = (SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1) LIMIT 1),
 (SELECT id FROM paises WHERE nombre = 'Alemania'), 28000.00,
 (SELECT id FROM monedas WHERE iso = 'EUR'), '2023-03-15'),

((SELECT id FROM vehiculos WHERE anio = 2023 AND modelo = (SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1) LIMIT 1),
 (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 45000.00,
 (SELECT id FROM monedas WHERE iso = 'USD'), '2023-02-01'),

((SELECT id FROM vehiculos WHERE anio = 2024 AND modelo = (SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1) LIMIT 1),
 (SELECT id FROM paises WHERE nombre = 'Canadá'), 32000.00,
 (SELECT id FROM monedas WHERE iso = 'CAD'), '2024-01-10');


-- 8. Insertar datos en la tabla 'ipc_mensual' (Depende de 'paises')
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2022, 1, 105.20),
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2022, 2, 105.55),
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2023, 1, 107.80),
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2023, 2, 108.10),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 1, 112.50),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 2, 112.80),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 1, 114.90),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 2, 115.25),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2022, 1, 120.10),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2022, 2, 120.45),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2023, 1, 122.60),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2023, 2, 122.90),
((SELECT id FROM paises WHERE nombre = 'China'), 2022, 1, 102.30),
((SELECT id FROM paises WHERE nombre = 'China'), 2022, 2, 102.40),
((SELECT id FROM paises WHERE nombre = 'China'), 2023, 1, 103.80),
((SELECT id FROM paises WHERE nombre = 'China'), 2023, 2, 103.95);


-- 9. Insertar datos en la tabla 'ventas_mensuales' (Depende de 'modelos' y 'paises')
INSERT INTO ventas_mensuales (modelo_id, pais_id, anio, mes, cantidad_vendida) VALUES
-- Toyota Corolla en Guatemala
((SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Guatemala'), 2022, 1, 150),
((SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Guatemala'), 2022, 2, 160),
((SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Guatemala'), 2023, 1, 175),
((SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Guatemala'), 2023, 2, 180),
((SELECT id FROM modelos WHERE nombre = 'Corolla' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Guatemala'), 2024, 1, 190),

-- Volkswagen Golf en Alemania
((SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 1, 1200),
((SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 2, 1250),
((SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 1, 1300),
((SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 2, 1320),
((SELECT id FROM modelos WHERE nombre = 'Golf' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Alemania'), 2024, 1, 1350),

-- Ford F-150 en EE. UU.
((SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2022, 1, 5000),
((SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2022, 2, 5100),
((SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2023, 1, 5200),
((SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2023, 2, 5300),
((SELECT id FROM modelos WHERE nombre = 'F-150' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2024, 1, 5400),

-- Honda Civic en Japón
((SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Japón'), 2022, 1, 800),
((SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Japón'), 2022, 2, 820),
((SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Japón'), 2023, 1, 850),
((SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Japón'), 2023, 2, 870),
((SELECT id FROM modelos WHERE nombre = 'Civic' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Japón'), 2024, 1, 900),

-- Hyundai Elantra en Corea del Sur
((SELECT id FROM modelos WHERE nombre = 'Elantra' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2022, 1, 600),
((SELECT id FROM modelos WHERE nombre = 'Elantra' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2022, 2, 610),
((SELECT id FROM modelos WHERE nombre = 'Elantra' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2023, 1, 630),
((SELECT id FROM modelos WHERE nombre = 'Elantra' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2023, 2, 640),
((SELECT id FROM modelos WHERE nombre = 'Elantra' LIMIT 1), (SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2024, 1, 650);


select*from ventas_mensuales;

-- Re-activar las comprobaciones de clave foránea (si las desactivaste)
-- SET session_replication_role = 'origin';

-- Confirma la inserción
SELECT 'Datos de prueba insertados con éxito.' AS Mensaje;
---------------------------------------------------------------------

CREATE TABLE indicadores_economicos_anuales (
    id SERIAL PRIMARY KEY,
    pais_id INT NOT NULL REFERENCES paises(id),
    anio SMALLINT NOT NULL,
    pib_valor NUMERIC(20, 2), -- Producto Interno Bruto
    tasa_interes NUMERIC(5, 2), -- Tasa de interés promedio o relevante
    confianza_consumidor NUMERIC(5, 2), -- Índice de confianza del consumidor
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(pais_id, anio) -- Asegura un registro único por país y año
);

-- Datos de prueba para la tabla 'indicadores_economicos_anuales'
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2022, 90000000000.00, 4.50, 85.2),
((SELECT id FROM paises WHERE nombre = 'Guatemala'), 2023, 93000000000.00, 4.70, 86.5),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 4000000000000.00, 1.20, 95.1),
((SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 4100000000000.00, 1.50, 96.3),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2022, 25000000000000.00, 2.00, 98.7),
((SELECT id FROM paises WHERE nombre = 'EE. UU.'), 2023, 26000000000000.00, 2.50, 99.1),
((SELECT id FROM paises WHERE nombre = 'Japón'), 2022, 4300000000000.00, 0.10, 90.0),
((SELECT id FROM paises WHERE nombre = 'Japón'), 2023, 4350000000000.00, 0.20, 91.5),
((SELECT id FROM paises WHERE nombre = 'China'), 2022, 18000000000000.00, 3.60, 88.0),
((SELECT id FROM paises WHERE nombre = 'China'), 2023, 18500000000000.00, 3.50, 89.2),
((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2022, 1700000000000.00, 1.75, 92.0),
((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2023, 1750000000000.00, 2.00, 93.0);
