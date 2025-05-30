-------------------------------------------------------------------
INSERT INTO marcas (nombre, estado) VALUES
('Toyota', 'A'),
('Honda', 'A'),
('Ford', 'A'),
('Chevrolet', 'A'),
('Nissan', 'A'),
('BMW', 'A'),
('Mercedes-Benz', 'A'),
('Audi', 'A'),
('Volkswagen', 'A'),
('Hyundai', 'A'),
('Kia', 'A'),
('Mazda', 'A'),
('Subaru', 'A'),
('Lexus', 'A'),
('Jaguar', 'A'),
('Land Rover', 'A'),
('Porsche', 'A'),
('Ferrari', 'A'),
('Lamborghini', 'A'),
('Bentley', 'A'),
('Rolls-Royce', 'A'),
('Mitsubishi', 'A'),
('Peugeot', 'A'),
('Renault', 'A'),
('Citroën', 'A');

-------------------------------------------------------------------
INSERT INTO modelos (nombre, marca)
VALUES
-- Toyota
('Corolla', 1), ('Camry', 1), ('RAV4', 1), ('Hilux', 1), ('Yaris', 1),
('Highlander', 1), ('Tacoma', 1), ('Land Cruiser', 1), ('Prius', 1), ('Sienna', 1),

-- Honda
('Civic', 2), ('Accord', 2), ('CR-V', 2), ('Fit', 2), ('HR-V', 2),
('Pilot', 2), ('Odyssey', 2), ('Insight', 2), ('Ridgeline', 2), ('Passport', 2),

-- Ford
('F-150', 3), ('Escape', 3), ('Mustang', 3), ('Explorer', 3), ('Fusion', 3),
('Edge', 3), ('Ranger', 3), ('Bronco', 3), ('Maverick', 3), ('EcoSport', 3),

-- Chevrolet
('Silverado', 4), ('Equinox', 4), ('Malibu', 4), ('Traverse', 4), ('Tahoe', 4),
('Camaro', 4), ('Colorado', 4), ('Blazer', 4), ('Trailblazer', 4), ('Suburban', 4),

-- Nissan
('Altima', 5), ('Sentra', 5), ('Rogue', 5), ('Versa', 5), ('Pathfinder', 5),
('Frontier', 5), ('Titan', 5), ('Maxima', 5), ('Murano', 5), ('Armada', 5),

-- BMW
('Series 3', 6), ('Series 5', 6), ('X1', 6), ('X3', 6), ('X5', 6),
('X7', 6), ('Series 1', 6), ('i3', 6), ('i8', 6), ('Z4', 6),

-- Mercedes-Benz
('C-Class', 7), ('E-Class', 7), ('S-Class', 7), ('GLA', 7), ('GLC', 7),
('GLE', 7), ('GLS', 7), ('A-Class', 7), ('CLA', 7), ('EQC', 7),

-- Audi
('A3', 8), ('A4', 8), ('A6', 8), ('Q3', 8), ('Q5', 8),
('Q7', 8), ('Q8', 8), ('A1', 8), ('TT', 8), ('e-tron', 8),

-- Volkswagen
('Golf', 9), ('Jetta', 9), ('Passat', 9), ('Tiguan', 9), ('Polo', 9),
('Touareg', 9), ('Arteon', 9), ('ID.4', 9), ('Beetle', 9), ('Taos', 9),

-- Hyundai
('Elantra', 10), ('Sonata', 10), ('Tucson', 10), ('Santa Fe', 10), ('Accent', 10),
('Palisade', 10), ('Venue', 10), ('Kona', 10), ('i10', 10), ('i20', 10),

-- Kia
('Forte', 11), ('Sportage', 11), ('Sorento', 11), ('Rio', 11), ('Optima', 11),
('Seltos', 11), ('Telluride', 11), ('Soul', 11), ('Stinger', 11), ('Niro', 11),

-- Mazda
('Mazda3', 12), ('Mazda6', 12), ('CX-3', 12), ('CX-30', 12), ('CX-5', 12),
('CX-9', 12), ('MX-5', 12), ('BT-50', 12), ('RX-8', 12), ('CX-50', 12),

-- Subaru
('Impreza', 13), ('Forester', 13), ('Outback', 13), ('Legacy', 13), ('Crosstrek', 13),
('Ascent', 13), ('BRZ', 13), ('WRX', 13), ('Levorg', 13), ('Exiga', 13),

-- Lexus
('IS', 14), ('ES', 14), ('GS', 14), ('LS', 14), ('UX', 14),
('NX', 14), ('RX', 14), ('GX', 14), ('LX', 14), ('RC', 14),

-- Jaguar
('XE', 15), ('XF', 15), ('XJ', 15), ('F-Pace', 15), ('E-Pace', 15),
('I-Pace', 15), ('F-Type', 15), ('S-Type', 15), ('X-Type', 15), ('XKR', 15),

-- Land Rover
('Range Rover', 16), ('Discovery', 16), ('Defender', 16), ('Range Rover Evoque', 16), ('Range Rover Sport', 16),
('Freelander', 16), ('Discovery Sport', 16), ('Velar', 16), ('LR2', 16), ('LR4', 16),

-- Porsche
('911', 17), ('Cayenne', 17), ('Macan', 17), ('Panamera', 17), ('Taycan', 17),
('718 Boxster', 17), ('718 Cayman', 17), ('Carrera', 17), ('Turbo S', 17), ('Spyder', 17),

-- Ferrari
('488 GTB', 18), ('F8 Tributo', 18), ('SF90 Stradale', 18), ('812 Superfast', 18), ('Roma', 18),
('Portofino', 18), ('LaFerrari', 18), ('California', 18), ('Enzo', 18), ('458 Italia', 18),

-- Lamborghini
('Aventador', 19), ('Huracán', 19), ('Urus', 19), ('Gallardo', 19), ('Murciélago', 19),
('Diablo', 19), ('Reventón', 19), ('Sian', 19), ('Veneno', 19), ('Countach', 19),

-- Bentley
('Continental GT', 20), ('Flying Spur', 20), ('Bentayga', 20), ('Mulsanne', 20), ('Azure', 20),
('Brooklands', 20), ('Turbo R', 20), ('Arnage', 20), ('Eight', 20), ('T-Series', 20),

-- Rolls-Royce
('Phantom', 21), ('Ghost', 21), ('Wraith', 21), ('Dawn', 21), ('Cullinan', 21),
('Silver Shadow', 21), ('Silver Ghost', 21), ('Corniche', 21), ('Camargue', 21), ('Silver Spur', 21),

-- Mitsubishi
('Lancer', 22), ('Outlander', 22), ('Mirage', 22), ('Eclipse Cross', 22), ('ASX', 22),
('Pajero', 22), ('Montero Sport', 22), ('Xpander', 22), ('Galant', 22), ('Triton', 22),

-- Peugeot
('208', 23), ('308', 23), ('3008', 23), ('2008', 23), ('508', 23),
('5008', 23), ('4008', 23), ('RCZ', 23), ('206', 23), ('607', 23),

-- Renault
('Clio', 24), ('Megane', 24), ('Captur', 24), ('Kadjar', 24), ('Talisman', 24),
('Koleos', 24), ('Logan', 24), ('Sandero', 24), ('Duster', 24), ('Fluence', 24),

-- Citroën
('C3', 25), ('C4', 25), ('C5 Aircross', 25), ('Berlingo', 25), ('C3 Aircross', 25),
('C1', 25), ('C4 Cactus', 25), ('C6', 25), ('C-Zero', 25), ('DS3', 25);

----------------------------------------------------------------------------------------------
DO $$
DECLARE 
    modelos_data CURSOR FOR SELECT id FROM modelos;
    id_modelo INT;
    i INT;
BEGIN
    OPEN modelos_data;
    LOOP
        FETCH modelos_data INTO id_modelo;
        EXIT WHEN NOT FOUND;		
        FOR i IN 2018..2024 LOOP
            INSERT INTO vehiculos (anio, modelo) 
            VALUES (i, id_modelo);
        END LOOP;
    END LOOP;
    CLOSE modelos_data;
END;
$$;
----------------------------------------------------------------------------------------------
INSERT INTO continentes (nombre, codigo) VALUES
('África', 'AF'),
('América', 'AM'),
('Asia', 'AS'),
('Europa', 'EU'),
('Oceanía', 'OC'),
('Antártida', 'AN');
----------------------------------------------------------------------------------------------
-- América
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('USD', 'Dólar estadounidense', '$', 1.00),
('ARS', 'Peso argentino', '$', 0.0012),
('BRL', 'Real brasileño', 'R$', 0.20),
('CAD', 'Dólar canadiense', 'C$', 0.73);

-- Europa
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('EUR', 'Euro', '€', 1.08);

-- Asia
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('CNY', 'Yuan chino', '¥', 0.14),
('INR', 'Rupia india', '₹', 0.012),
('JPY', 'Yen japonés', '¥', 0.0065),
('KRW', 'Won surcoreano', '₩', 0.00074);

-- África
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('ZAR', 'Rand sudafricano', 'R', 0.054),
('NGN', 'Naira nigeriana', '₦', 0.00068),
('EGP', 'Libra egipcia', '£', 0.020),
('KES', 'Chelín keniano', 'KSh', 0.0077);

-- Oceanía
INSERT INTO monedas (iso, nombre, signo, cambio_dolar) VALUES
('AUD', 'Dólar australiano', 'A$', 0.66),
('NZD', 'Dólar neozelandés', 'NZ$', 0.61),
('FJD', 'Dólar fiyiano', 'FJ$', 0.44),
('PGK', 'Kina papú', 'K', 0.27);

----------------------------------------------------------------------------------------------

-- África (continente_id = 1)
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Sudáfrica', 'ZA', 1, (SELECT id FROM monedas WHERE iso = 'ZAR')),
('Nigeria', 'NG', 1, (SELECT id FROM monedas WHERE iso = 'NGN')),
('Egipto', 'EG', 1, (SELECT id FROM monedas WHERE iso = 'EGP')),
('Kenia', 'KE', 1, (SELECT id FROM monedas WHERE iso = 'KES'));

-- América (continente_id = 2)
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Argentina', 'AR', 2, (SELECT id FROM monedas WHERE iso = 'ARS')),
('Brasil', 'BR', 2, (SELECT id FROM monedas WHERE iso = 'BRL')),
('Estados Unidos', 'US', 2, (SELECT id FROM monedas WHERE iso = 'USD')),
('Canadá', 'CA', 2, (SELECT id FROM monedas WHERE iso = 'CAD'));

-- Asia (continente_id = 3)
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('China', 'CN', 3, (SELECT id FROM monedas WHERE iso = 'CNY')),
('India', 'IN', 3, (SELECT id FROM monedas WHERE iso = 'INR')),
('Japón', 'JP', 3, (SELECT id FROM monedas WHERE iso = 'JPY')),
('Corea del Sur', 'KR', 3, (SELECT id FROM monedas WHERE iso = 'KRW'));

-- Europa (continente_id = 4)
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Alemania', 'DE', 4, (SELECT id FROM monedas WHERE iso = 'EUR')),
('Francia', 'FR', 4, (SELECT id FROM monedas WHERE iso = 'EUR')),
('España', 'ES', 4, (SELECT id FROM monedas WHERE iso = 'EUR')),
('Italia', 'IT', 4, (SELECT id FROM monedas WHERE iso = 'EUR'));

-- Oceanía (continente_id = 5)
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Australia', 'AU', 5, (SELECT id FROM monedas WHERE iso = 'AUD')),
('Nueva Zelanda', 'NZ', 5, (SELECT id FROM monedas WHERE iso = 'NZD')),
('Fiyi', 'FJ', 5, (SELECT id FROM monedas WHERE iso = 'FJD')),
('Papúa Nueva Guinea', 'PG', 5, (SELECT id FROM monedas WHERE iso = 'PGK'));

-- Antártida (continente_id = 6) – Ejemplo simbólico, ya que no hay países oficiales allí
INSERT INTO paises (nombre, codigo_iso, continente_id, moneda_id) VALUES
('Base Esperanza', 'BE', 6, (SELECT id FROM monedas WHERE iso = 'ARS')),
('McMurdo Station', 'MS', 6, (SELECT id FROM monedas WHERE iso = 'USD')),
('Scott Base', 'SB', 6, (SELECT id FROM monedas WHERE iso = 'NZD')),
('Base Concordia', 'BC', 6, (SELECT id FROM monedas WHERE iso = 'EUR'));

----------------------------------------------------------------------------------------------

select v.id cod_vehiculo, mar.nombre nom_marca,  mod.nombre nom_modelo
from vehiculos v
inner join modelos mod  on mod.id = v.modelo
inner join marcas mar on mar.id = mod.marca where v.anio = 2018;

----------------------------------------------------------------------------------------------
select * from precios_venta pv ;
select * from paises;
----------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE insertar_precios_aleatorios(
    IN cantidad_vehiculos INTEGER,
    IN pais INTEGER DEFAULT 7,
    IN moneda INTEGER DEFAULT 1,
    IN fecha DATE DEFAULT '2018-01-01'
)
LANGUAGE plpgsql
AS $$
DECLARE
    i INTEGER;
    precio NUMERIC;
BEGIN
    FOR i IN 1..cantidad_vehiculos LOOP
        -- Precio aleatorio entre 15,000 y 27,000 con 2 decimales
        precio := round((15000 + random() * (27000 - 15000))::numeric, 2);

        INSERT INTO precios_venta (
            vehiculo_id, pais_id, precio, moneda_id, fecha_inicio, fecha_fin, estado
        ) VALUES (
            i, pais, precio, moneda, fecha, NULL, 'A'
        );
    END LOOP;
END;
$$;

CALL insertar_precios_aleatorios(1750);
select * from precios_venta

-------------------------------------------------------------------
-- TABLA DE IPC --------------------------------------------------
-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 1, 247.8670);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 2, 248.9910);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 3, 249.5540);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 4, 250.5460);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 5, 251.5880);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 6, 251.9890);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 7, 252.0060);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 8, 252.1460);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 9, 252.4390);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 10, 252.8850);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 11, 252.0380);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2018, 12, 251.2330);
-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 1, 251.7120);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 2, 252.7760);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 3, 254.2020);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 4, 255.5480);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 5, 256.0920);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 6, 256.1430);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 7, 256.5710);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 8, 256.5580);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 9, 256.7590);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 10, 257.3460);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 11, 257.2080);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2019, 12, 256.9740);
-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 1, 257.9710);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 2, 258.6780);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 3, 258.1150);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 4, 256.3890);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 5, 256.3940);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 6, 257.7970);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 7, 259.1010);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 8, 259.9180);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 9, 260.2800);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 10, 260.3880);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 11, 260.2290);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2020, 12, 260.4740);
-- 2021, 2022, 2023
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 1, 261.5820);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 2, 263.0140);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 3, 264.8770);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 4, 267.0540);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 5, 269.1950);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 6, 271.6960);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 7, 273.0030);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 8, 273.5670);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 9, 274.3100);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 10, 276.5890);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 11, 277.9480);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2021, 12, 278.8020);

INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 1, 281.1480);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 2, 283.7160);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 3, 287.5040);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 4, 289.1090);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 5, 292.2960);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 6, 296.3110);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 7, 296.2760);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 8, 296.1710);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 9, 296.8080);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 10, 298.0120);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 11, 297.7110);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2022, 12, 296.7970);

INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 1, 299.1700);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 2, 300.8400);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 3, 301.8360);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 4, 303.3630);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 5, 304.1270);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 6, 305.1090);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 7, 305.6910);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 8, 307.0260);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 9, 307.7890);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 10, 307.6710);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 11, 307.0510);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2023, 12, 306.7460);

-- 2024
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 1, 307.7250);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 2, 308.0620);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 3, 308.8200);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 4, 309.3500);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 5, 309.8500);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 6, 310.4500);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 7, 311.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 8, 311.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 9, 312.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 10, 312.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 11, 313.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (7, 2024, 12, 313.7500);

----------------------------------------------------------------------------------------
-- Sudafrica
-- IPC Sudáfrica 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 1, 103.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 2, 103.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 3, 103.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 4, 104.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 5, 104.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 6, 104.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 7, 105.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 8, 105.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 9, 106.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 10, 106.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 11, 106.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2018, 12, 107.0000);

-- IPC Sudáfrica 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 1, 107.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 2, 107.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 3, 108.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 4, 108.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 5, 108.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 6, 109.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 7, 109.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 8, 110.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 9, 110.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 10, 110.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 11, 111.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2019, 12, 111.4000);

-- IPC Sudáfrica 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 1, 111.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 2, 112.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 3, 112.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 4, 112.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 5, 112.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 6, 113.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 7, 113.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 8, 113.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 9, 113.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 10, 114.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 11, 114.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2020, 12, 114.6000);

-- IPC Sudáfrica 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 1, 114.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 2, 115.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 3, 115.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 4, 115.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 5, 116.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 6, 116.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 7, 116.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 8, 117.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 9, 117.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 10, 117.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 11, 117.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2021, 12, 118.2000);

-- IPC Sudáfrica 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 1, 118.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 2, 118.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 3, 119.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 4, 119.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 5, 119.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 6, 120.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 7, 120.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 8, 121.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 9, 121.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 10, 121.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 11, 122.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2022, 12, 122.4000);

-- IPC Sudáfrica 2023
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 1, 122.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 2, 123.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 3, 123.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 4, 123.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 5, 124.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 6, 124.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 7, 124.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 8, 125.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 9, 125.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 10, 126.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 11, 126.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2023, 12, 126.7000);

-- IPC Sudáfrica 2024
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 1, 127.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 2, 127.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 3, 127.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 4, 128.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 5, 128.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 6, 128.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 7, 129.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 8, 129.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 9, 130.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 10, 130.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 11, 130.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (1, 2024, 12, 131.0000);

------------------------------------------------------------------------------------------
-- IPC Nigeria 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 1, 100.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 2, 100.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 3, 101.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 4, 101.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 5, 101.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 6, 102.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 7, 102.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 8, 102.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 9, 103.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 10, 103.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 11, 103.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2018, 12, 104.3000);

-- IPC Nigeria 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 1, 104.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 2, 105.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 3, 105.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 4, 106.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 5, 106.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 6, 106.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 7, 107.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 8, 107.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 9, 108.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 10, 108.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 11, 109.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2019, 12, 109.4000);

-- IPC Nigeria 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 1, 109.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 2, 110.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 3, 110.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 4, 111.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 5, 111.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 6, 112.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 7, 112.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 8, 112.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 9, 113.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 10, 113.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 11, 114.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2020, 12, 114.6000);

-- IPC Nigeria 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 1, 115.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 2, 115.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 3, 115.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 4, 116.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 5, 116.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 6, 117.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 7, 117.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 8, 118.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 9, 118.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 10, 118.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 11, 119.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2021, 12, 119.7000);

-- IPC Nigeria 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 1, 120.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 2, 120.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 3, 121.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 4, 121.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 5, 121.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 6, 122.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 7, 122.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 8, 123.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 9, 123.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 10, 124.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 11, 124.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2022, 12, 124.9000);

-- IPC Nigeria 2023
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 1, 125.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 2, 125.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 3, 126.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 4, 126.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 5, 127.1000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 6, 127.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 7, 128.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 8, 128.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 9, 128.8000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 10, 129.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 11, 129.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2023, 12, 130.1000);

-- IPC Nigeria 2024
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 1, 130.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 2, 131.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 3, 131.4000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 4, 131.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 5, 132.3000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 6, 132.7000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 7, 133.2000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 8, 133.6000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 9, 134.0000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 10, 134.5000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 11, 134.9000);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (2, 2024, 12, 135.3000);
------------------------------------------------------------------------------------------------------------
-- Egipto 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 1, 100.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 2, 100.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 3, 101.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 4, 101.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 5, 101.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 6, 102.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 7, 102.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 8, 103.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 9, 103.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 10, 104.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 11, 104.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2018, 12, 105.00);

-- Egipto 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 1, 105.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 2, 105.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 3, 106.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 4, 106.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 5, 107.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 6, 107.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 7, 108.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 8, 108.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 9, 109.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 10, 109.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 11, 109.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2019, 12, 110.40);

-- Egipto 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 1, 110.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 2, 111.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 3, 111.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 4, 112.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 5, 112.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 6, 113.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 7, 113.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 8, 114.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 9, 114.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 10, 114.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 11, 115.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2020, 12, 115.80);

-- Egipto 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 1, 116.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 2, 116.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 3, 117.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 4, 117.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 5, 118.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 6, 118.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 7, 118.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 8, 119.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 9, 119.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 10, 120.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 11, 120.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2021, 12, 121.20);

-- Egipto 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 1, 121.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 2, 122.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 3, 122.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 4, 123.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 5, 123.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 6, 123.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 7, 124.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 8, 124.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 9, 125.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 10, 125.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 11, 126.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2022, 12, 126.60);

-- Egipto 2023
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 1, 127.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 2, 127.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 3, 127.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 4, 128.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 5, 128.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 6, 129.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 7, 129.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 8, 130.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 9, 130.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 10, 131.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 11, 131.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2023, 12, 132.00);

-- Egipto 2024
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 1, 132.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 2, 132.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 3, 133.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 4, 133.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 5, 134.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 6, 134.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 7, 135.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 8, 135.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 9, 136.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 10, 136.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 11, 136.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (3, 2024, 12, 137.40);
-------------------------------------------------------------------------------------
-- Kenia 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 1, 100.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 2, 100.55);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 3, 101.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 4, 101.65);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 5, 102.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 6, 102.75);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 7, 103.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 8, 103.85);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 9, 104.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 10, 104.95);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 11, 105.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2018, 12, 106.05);

-- Kenia 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 1, 106.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 2, 107.15);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 3, 107.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 4, 108.25);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 5, 108.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 6, 109.35);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 7, 109.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 8, 110.45);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 9, 111.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 10, 111.55);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 11, 112.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2019, 12, 112.65);

-- Kenia 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 1, 113.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 2, 113.75);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 3, 114.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 4, 114.85);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 5, 115.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 6, 115.95);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 7, 116.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 8, 117.05);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 9, 117.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 10, 118.15);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 11, 118.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2020, 12, 119.25);

-- Kenia 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 1, 119.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 2, 120.35);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 3, 120.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 4, 121.45);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 5, 122.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 6, 122.55);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 7, 123.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 8, 123.65);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 9, 124.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 10, 124.75);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 11, 125.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2021, 12, 125.85);

-- Kenia 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 1, 126.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 2, 126.95);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 3, 127.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 4, 128.05);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 5, 128.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 6, 129.15);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 7, 129.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 8, 130.25);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 9, 130.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 10, 131.35);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 11, 131.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2022, 12, 132.45);

-- Kenia 2023
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 1, 133.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 2, 133.55);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 3, 134.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 4, 134.65);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 5, 135.20);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 6, 135.75);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 7, 136.30);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 8, 136.85);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 9, 137.40);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 10, 137.95);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 11, 138.50);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2023, 12, 139.05);

-- Kenia 2024
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 1, 139.60);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 2, 140.15);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 3, 140.70);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 4, 141.25);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 5, 141.80);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 6, 142.35);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 7, 142.90);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 8, 143.45);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 9, 144.00);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 10, 144.55);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 11, 145.10);
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES (4, 2024, 12, 145.65);

-------------------------------------------------------------------------------------
-- Argentina (código pais = 5)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2018, 1, 177.55),
(5, 2018, 2, 179.11),
(5, 2018, 3, 179.61),
(5, 2018, 4, 179.73),
(5, 2018, 5, 181.19),
(5, 2018, 6, 182.98),
(5, 2018, 7, 184.07),
(5, 2018, 8, 185.31),
(5, 2018, 9, 186.23),
(5, 2018, 10, 186.66),
(5, 2018, 11, 187.34),
(5, 2018, 12, 186.62);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2019, 1, 190.67),
(5, 2019, 2, 192.53),
(5, 2019, 3, 193.59),
(5, 2019, 4, 194.42),
(5, 2019, 5, 195.19),
(5, 2019, 6, 196.44),
(5, 2019, 7, 197.94),
(5, 2019, 8, 199.69),
(5, 2019, 9, 200.72),
(5, 2019, 10, 202.23),
(5, 2019, 11, 203.08),
(5, 2019, 12, 203.02);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2020, 1, 207.27),
(5, 2020, 2, 208.54),
(5, 2020, 3, 211.32),
(5, 2020, 4, 215.54),
(5, 2020, 5, 216.76),
(5, 2020, 6, 216.80),
(5, 2020, 7, 217.99),
(5, 2020, 8, 219.24),
(5, 2020, 9, 220.64),
(5, 2020, 10, 221.92),
(5, 2020, 11, 222.55),
(5, 2020, 12, 222.13);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2021, 1, 225.69),
(5, 2021, 2, 227.55),
(5, 2021, 3, 228.95),
(5, 2021, 4, 230.10),
(5, 2021, 5, 231.15),
(5, 2021, 6, 232.69),
(5, 2021, 7, 233.90),
(5, 2021, 8, 235.89),
(5, 2021, 9, 236.98),
(5, 2021, 10, 239.44),
(5, 2021, 11, 240.05),
(5, 2021, 12, 239.81);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2022, 1, 244.09),
(5, 2022, 2, 247.68),
(5, 2022, 3, 250.42),
(5, 2022, 4, 251.65),
(5, 2022, 5, 252.82),
(5, 2022, 6, 254.30),
(5, 2022, 7, 256.26),
(5, 2022, 8, 259.38),
(5, 2022, 9, 260.55),
(5, 2022, 10, 261.10),
(5, 2022, 11, 262.50), -- inventado
(5, 2022, 12, 263.00); -- inventado

-- 2023 (inventados para completar)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2023, 1, 264.50),
(5, 2023, 2, 266.00),
(5, 2023, 3, 267.50),
(5, 2023, 4, 269.00),
(5, 2023, 5, 270.50),
(5, 2023, 6, 272.00),
(5, 2023, 7, 273.50),
(5, 2023, 8, 275.00),
(5, 2023, 9, 276.50),
(5, 2023, 10, 278.00),
(5, 2023, 11, 279.50),
(5, 2023, 12, 281.00);

-- 2024 (inventados para completar)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(5, 2024, 1, 282.50),
(5, 2024, 2, 284.00),
(5, 2024, 3, 285.50),
(5, 2024, 4, 287.00),
(5, 2024, 5, 288.50),
(5, 2024, 6, 290.00),
(5, 2024, 7, 291.50),
(5, 2024, 8, 293.00),
(5, 2024, 9, 294.50),
(5, 2024, 10, 296.00),
(5, 2024, 11, 297.50),
(5, 2024, 12, 299.00);

-------------------------------------------------------------------------------------
-- Brasil (código pais = 6)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2018, 1, 100.0),
(6, 2018, 2, 100.4),
(6, 2018, 3, 100.8),
(6, 2018, 4, 101.2),
(6, 2018, 5, 101.5),
(6, 2018, 6, 101.7),
(6, 2018, 7, 101.9),
(6, 2018, 8, 102.3),
(6, 2018, 9, 102.7),
(6, 2018, 10, 102.9),
(6, 2018, 11, 103.2),
(6, 2018, 12, 103.5);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2019, 1, 103.7),
(6, 2019, 2, 103.9),
(6, 2019, 3, 104.3),
(6, 2019, 4, 104.6),
(6, 2019, 5, 104.9),
(6, 2019, 6, 105.2),
(6, 2019, 7, 105.5),
(6, 2019, 8, 105.8),
(6, 2019, 9, 106.1),
(6, 2019, 10, 106.4),
(6, 2019, 11, 106.7),
(6, 2019, 12, 106.9);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2020, 1, 107.2),
(6, 2020, 2, 107.5),
(6, 2020, 3, 107.8),
(6, 2020, 4, 108.2),
(6, 2020, 5, 108.5),
(6, 2020, 6, 108.8),
(6, 2020, 7, 109.2),
(6, 2020, 8, 109.6),
(6, 2020, 9, 110.0),
(6, 2020, 10, 110.3),
(6, 2020, 11, 110.7),
(6, 2020, 12, 111.0);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2021, 1, 111.4),
(6, 2021, 2, 111.8),
(6, 2021, 3, 112.2),
(6, 2021, 4, 112.7),
(6, 2021, 5, 113.1),
(6, 2021, 6, 113.6),
(6, 2021, 7, 114.0),
(6, 2021, 8, 114.5),
(6, 2021, 9, 114.9),
(6, 2021, 10, 115.3),
(6, 2021, 11, 115.7),
(6, 2021, 12, 116.1);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2022, 1, 116.6),
(6, 2022, 2, 117.0),
(6, 2022, 3, 117.5),
(6, 2022, 4, 118.0),
(6, 2022, 5, 118.4),
(6, 2022, 6, 118.9),
(6, 2022, 7, 119.3),
(6, 2022, 8, 119.8),
(6, 2022, 9, 120.3),
(6, 2022, 10, 120.7),
(6, 2022, 11, 121.2), -- inventado
(6, 2022, 12, 121.7); -- inventado

-- 2023 (inventados para completar)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2023, 1, 122.2),
(6, 2023, 2, 122.7),
(6, 2023, 3, 123.2),
(6, 2023, 4, 123.7),
(6, 2023, 5, 124.2),
(6, 2023, 6, 124.7),
(6, 2023, 7, 125.2),
(6, 2023, 8, 125.7),
(6, 2023, 9, 126.2),
(6, 2023, 10, 126.7),
(6, 2023, 11, 127.2),
(6, 2023, 12, 127.7);

-- 2024 (inventados para completar)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(6, 2024, 1, 128.2),
(6, 2024, 2, 128.7),
(6, 2024, 3, 129.2),
(6, 2024, 4, 129.7),
(6, 2024, 5, 130.2),
(6, 2024, 6, 130.7),
(6, 2024, 7, 131.2),
(6, 2024, 8, 131.7),
(6, 2024, 9, 132.2),
(6, 2024, 10, 132.7),
(6, 2024, 11, 133.2),
(6, 2024, 12, 133.7);

-------------------------------------------------------------------------------------
-- Canadá (código pais = 8)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2018, 1, 100.0),
(8, 2018, 2, 100.3),
(8, 2018, 3, 100.6),
(8, 2018, 4, 100.9),
(8, 2018, 5, 101.2),
(8, 2018, 6, 101.5),
(8, 2018, 7, 101.7),
(8, 2018, 8, 102.0),
(8, 2018, 9, 102.3),
(8, 2018, 10, 102.5),
(8, 2018, 11, 102.8),
(8, 2018, 12, 103.1);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2019, 1, 103.3),
(8, 2019, 2, 103.5),
(8, 2019, 3, 103.8),
(8, 2019, 4, 104.1),
(8, 2019, 5, 104.3),
(8, 2019, 6, 104.6),
(8, 2019, 7, 104.8),
(8, 2019, 8, 105.0),
(8, 2019, 9, 105.3),
(8, 2019, 10, 105.6),
(8, 2019, 11, 105.8),
(8, 2019, 12, 106.1);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2020, 1, 106.3),
(8, 2020, 2, 106.5),
(8, 2020, 3, 106.7),
(8, 2020, 4, 107.0),
(8, 2020, 5, 107.3),
(8, 2020, 6, 107.5),
(8, 2020, 7, 107.8),
(8, 2020, 8, 108.1),
(8, 2020, 9, 108.4),
(8, 2020, 10, 108.7),
(8, 2020, 11, 109.0),
(8, 2020, 12, 109.3);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2021, 1, 109.6),
(8, 2021, 2, 110.0),
(8, 2021, 3, 110.4),
(8, 2021, 4, 110.8),
(8, 2021, 5, 111.2),
(8, 2021, 6, 111.6),
(8, 2021, 7, 112.0),
(8, 2021, 8, 112.4),
(8, 2021, 9, 112.8),
(8, 2021, 10, 113.2),
(8, 2021, 11, 113.6),
(8, 2021, 12, 114.0);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2022, 1, 114.5),
(8, 2022, 2, 115.0),
(8, 2022, 3, 115.5),
(8, 2022, 4, 116.0),
(8, 2022, 5, 116.5),
(8, 2022, 6, 117.0),
(8, 2022, 7, 117.5),
(8, 2022, 8, 118.0),
(8, 2022, 9, 118.5),
(8, 2022, 10, 119.0),
(8, 2022, 11, 119.5),
(8, 2022, 12, 120.0);

-- 2023 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2023, 1, 120.5),
(8, 2023, 2, 121.0),
(8, 2023, 3, 121.5),
(8, 2023, 4, 122.0),
(8, 2023, 5, 122.5),
(8, 2023, 6, 123.0),
(8, 2023, 7, 123.5),
(8, 2023, 8, 124.0),
(8, 2023, 9, 124.5),
(8, 2023, 10, 125.0),
(8, 2023, 11, 125.5),
(8, 2023, 12, 126.0);

-- 2024 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(8, 2024, 1, 126.5),
(8, 2024, 2, 127.0),
(8, 2024, 3, 127.5),
(8, 2024, 4, 128.0),
(8, 2024, 5, 128.5),
(8, 2024, 6, 129.0),
(8, 2024, 7, 129.5),
(8, 2024, 8, 130.0),
(8, 2024, 9, 130.5),
(8, 2024, 10, 131.0),
(8, 2024, 11, 131.5),
(8, 2024, 12, 132.0);

-------------------------------------------------------------------------------------
-- China (código pais = 9)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2018, 1, 101.5),
(9, 2018, 2, 101.8),
(9, 2018, 3, 102.0),
(9, 2018, 4, 102.3),
(9, 2018, 5, 102.6),
(9, 2018, 6, 102.9),
(9, 2018, 7, 103.2),
(9, 2018, 8, 103.4),
(9, 2018, 9, 103.7),
(9, 2018, 10, 104.0),
(9, 2018, 11, 104.3),
(9, 2018, 12, 104.6);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2019, 1, 104.9),
(9, 2019, 2, 105.2),
(9, 2019, 3, 105.5),
(9, 2019, 4, 105.8),
(9, 2019, 5, 106.1),
(9, 2019, 6, 106.3),
(9, 2019, 7, 106.6),
(9, 2019, 8, 106.9),
(9, 2019, 9, 107.2),
(9, 2019, 10, 107.5),
(9, 2019, 11, 107.8),
(9, 2019, 12, 108.1);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2020, 1, 108.4),
(9, 2020, 2, 108.7),
(9, 2020, 3, 109.0),
(9, 2020, 4, 109.3),
(9, 2020, 5, 109.6),
(9, 2020, 6, 109.9),
(9, 2020, 7, 110.2),
(9, 2020, 8, 110.5),
(9, 2020, 9, 110.8),
(9, 2020, 10, 111.1),
(9, 2020, 11, 111.4),
(9, 2020, 12, 111.7);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2021, 1, 112.0),
(9, 2021, 2, 112.3),
(9, 2021, 3, 112.6),
(9, 2021, 4, 112.9),
(9, 2021, 5, 113.2),
(9, 2021, 6, 113.5),
(9, 2021, 7, 113.8),
(9, 2021, 8, 114.1),
(9, 2021, 9, 114.4),
(9, 2021, 10, 114.7),
(9, 2021, 11, 115.0),
(9, 2021, 12, 115.3);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2022, 1, 115.7),
(9, 2022, 2, 116.1),
(9, 2022, 3, 116.5),
(9, 2022, 4, 116.9),
(9, 2022, 5, 117.3),
(9, 2022, 6, 117.7),
(9, 2022, 7, 118.1),
(9, 2022, 8, 118.5),
(9, 2022, 9, 118.9),
(9, 2022, 10, 119.3),
(9, 2022, 11, 119.7),
(9, 2022, 12, 120.1);

-- 2023 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2023, 1, 120.5),
(9, 2023, 2, 121.0),
(9, 2023, 3, 121.5),
(9, 2023, 4, 122.0),
(9, 2023, 5, 122.5),
(9, 2023, 6, 123.0),
(9, 2023, 7, 123.5),
(9, 2023, 8, 124.0),
(9, 2023, 9, 124.5),
(9, 2023, 10, 125.0),
(9, 2023, 11, 125.5),
(9, 2023, 12, 126.0);

-- 2024 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(9, 2024, 1, 126.5),
(9, 2024, 2, 127.0),
(9, 2024, 3, 127.5),
(9, 2024, 4, 128.0),
(9, 2024, 5, 128.5),
(9, 2024, 6, 129.0),
(9, 2024, 7, 129.5),
(9, 2024, 8, 130.0),
(9, 2024, 9, 130.5),
(9, 2024, 10, 131.0),
(9, 2024, 11, 131.5),
(9, 2024, 12, 132.0);

-------------------------------------------------------------------------------------
-- India (código pais = 10)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2018, 1, 102.1),
(10, 2018, 2, 102.4),
(10, 2018, 3, 102.8),
(10, 2018, 4, 103.0),
(10, 2018, 5, 103.3),
(10, 2018, 6, 103.6),
(10, 2018, 7, 103.9),
(10, 2018, 8, 104.1),
(10, 2018, 9, 104.4),
(10, 2018, 10, 104.7),
(10, 2018, 11, 105.0),
(10, 2018, 12, 105.3);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2019, 1, 105.6),
(10, 2019, 2, 105.9),
(10, 2019, 3, 106.2),
(10, 2019, 4, 106.5),
(10, 2019, 5, 106.8),
(10, 2019, 6, 107.1),
(10, 2019, 7, 107.4),
(10, 2019, 8, 107.7),
(10, 2019, 9, 108.0),
(10, 2019, 10, 108.3),
(10, 2019, 11, 108.6),
(10, 2019, 12, 108.9);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2020, 1, 109.2),
(10, 2020, 2, 109.5),
(10, 2020, 3, 109.8),
(10, 2020, 4, 110.1),
(10, 2020, 5, 110.4),
(10, 2020, 6, 110.7),
(10, 2020, 7, 111.0),
(10, 2020, 8, 111.3),
(10, 2020, 9, 111.6),
(10, 2020, 10, 111.9),
(10, 2020, 11, 112.2),
(10, 2020, 12, 112.5);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2021, 1, 112.8),
(10, 2021, 2, 113.1),
(10, 2021, 3, 113.4),
(10, 2021, 4, 113.7),
(10, 2021, 5, 114.0),
(10, 2021, 6, 114.3),
(10, 2021, 7, 114.6),
(10, 2021, 8, 114.9),
(10, 2021, 9, 115.2),
(10, 2021, 10, 115.5),
(10, 2021, 11, 115.8),
(10, 2021, 12, 116.1);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2022, 1, 116.5),
(10, 2022, 2, 116.9),
(10, 2022, 3, 117.3),
(10, 2022, 4, 117.7),
(10, 2022, 5, 118.1),
(10, 2022, 6, 118.5),
(10, 2022, 7, 118.9),
(10, 2022, 8, 119.3),
(10, 2022, 9, 119.7),
(10, 2022, 10, 120.1),
(10, 2022, 11, 120.5),
(10, 2022, 12, 120.9);

-- 2023 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2023, 1, 121.3),
(10, 2023, 2, 121.8),
(10, 2023, 3, 122.3),
(10, 2023, 4, 122.8),
(10, 2023, 5, 123.3),
(10, 2023, 6, 123.8),
(10, 2023, 7, 124.3),
(10, 2023, 8, 124.8),
(10, 2023, 9, 125.3),
(10, 2023, 10, 125.8),
(10, 2023, 11, 126.3),
(10, 2023, 12, 126.8);

-- 2024 (datos inventados)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(10, 2024, 1, 127.3),
(10, 2024, 2, 127.8),
(10, 2024, 3, 128.3),
(10, 2024, 4, 128.8),
(10, 2024, 5, 129.3),
(10, 2024, 6, 129.8),
(10, 2024, 7, 130.3),
(10, 2024, 8, 130.8),
(10, 2024, 9, 131.3),
(10, 2024, 10, 131.8),
(10, 2024, 11, 132.3),
(10, 2024, 12, 132.8);

-------------------------------------------------------------------------------------
-- Japón (código pais = 11)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2018, 1, 101.2),
(11, 2018, 2, 101.4),
(11, 2018, 3, 101.5),
(11, 2018, 4, 101.6),
(11, 2018, 5, 101.8),
(11, 2018, 6, 101.9),
(11, 2018, 7, 102.0),
(11, 2018, 8, 102.1),
(11, 2018, 9, 102.3),
(11, 2018, 10, 102.4),
(11, 2018, 11, 102.5),
(11, 2018, 12, 102.6);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2019, 1, 102.7),
(11, 2019, 2, 102.8),
(11, 2019, 3, 102.9),
(11, 2019, 4, 103.0),
(11, 2019, 5, 103.1),
(11, 2019, 6, 103.2),
(11, 2019, 7, 103.3),
(11, 2019, 8, 103.4),
(11, 2019, 9, 103.5),
(11, 2019, 10, 103.6),
(11, 2019, 11, 103.7),
(11, 2019, 12, 103.8);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2020, 1, 103.9),
(11, 2020, 2, 104.0),
(11, 2020, 3, 104.1),
(11, 2020, 4, 104.2),
(11, 2020, 5, 104.3),
(11, 2020, 6, 104.4),
(11, 2020, 7, 104.5),
(11, 2020, 8, 104.6),
(11, 2020, 9, 104.7),
(11, 2020, 10, 104.8),
(11, 2020, 11, 104.9),
(11, 2020, 12, 105.0);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2021, 1, 105.1),
(11, 2021, 2, 105.2),
(11, 2021, 3, 105.3),
(11, 2021, 4, 105.4),
(11, 2021, 5, 105.5),
(11, 2021, 6, 105.6),
(11, 2021, 7, 105.7),
(11, 2021, 8, 105.8),
(11, 2021, 9, 105.9),
(11, 2021, 10, 106.0),
(11, 2021, 11, 106.1),
(11, 2021, 12, 106.2);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2022, 1, 106.3),
(11, 2022, 2, 106.4),
(11, 2022, 3, 106.5),
(11, 2022, 4, 106.6),
(11, 2022, 5, 106.7),
(11, 2022, 6, 106.8),
(11, 2022, 7, 106.9),
(11, 2022, 8, 107.0),
(11, 2022, 9, 107.1),
(11, 2022, 10, 107.2),
(11, 2022, 11, 107.3),
(11, 2022, 12, 107.4);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2023, 1, 107.5),
(11, 2023, 2, 107.6),
(11, 2023, 3, 107.7),
(11, 2023, 4, 107.8),
(11, 2023, 5, 107.9),
(11, 2023, 6, 108.0),
(11, 2023, 7, 108.1),
(11, 2023, 8, 108.2),
(11, 2023, 9, 108.3),
(11, 2023, 10, 108.4),
(11, 2023, 11, 108.5),
(11, 2023, 12, 108.6);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(11, 2024, 1, 108.7),
(11, 2024, 2, 108.8),
(11, 2024, 3, 108.9),
(11, 2024, 4, 109.0),
(11, 2024, 5, 109.1),
(11, 2024, 6, 109.2),
(11, 2024, 7, 109.3),
(11, 2024, 8, 109.4),
(11, 2024, 9, 109.5),
(11, 2024, 10, 109.6),
(11, 2024, 11, 109.7),
(11, 2024, 12, 109.8);
-------------------------------------------------------------------------------------
-- Corea del Sur (código pais = 12)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2018, 1, 101.4),
(12, 2018, 2, 101.5),
(12, 2018, 3, 101.7),
(12, 2018, 4, 101.9),
(12, 2018, 5, 102.0),
(12, 2018, 6, 102.2),
(12, 2018, 7, 102.3),
(12, 2018, 8, 102.5),
(12, 2018, 9, 102.6),
(12, 2018, 10, 102.8),
(12, 2018, 11, 102.9),
(12, 2018, 12, 103.0);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2019, 1, 103.1),
(12, 2019, 2, 103.2),
(12, 2019, 3, 103.4),
(12, 2019, 4, 103.5),
(12, 2019, 5, 103.7),
(12, 2019, 6, 103.8),
(12, 2019, 7, 103.9),
(12, 2019, 8, 104.1),
(12, 2019, 9, 104.2),
(12, 2019, 10, 104.3),
(12, 2019, 11, 104.5),
(12, 2019, 12, 104.6);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2020, 1, 104.7),
(12, 2020, 2, 104.8),
(12, 2020, 3, 105.0),
(12, 2020, 4, 105.1),
(12, 2020, 5, 105.2),
(12, 2020, 6, 105.4),
(12, 2020, 7, 105.5),
(12, 2020, 8, 105.6),
(12, 2020, 9, 105.8),
(12, 2020, 10, 105.9),
(12, 2020, 11, 106.0),
(12, 2020, 12, 106.2);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2021, 1, 106.3),
(12, 2021, 2, 106.4),
(12, 2021, 3, 106.6),
(12, 2021, 4, 106.7),
(12, 2021, 5, 106.8),
(12, 2021, 6, 107.0),
(12, 2021, 7, 107.1),
(12, 2021, 8, 107.2),
(12, 2021, 9, 107.4),
(12, 2021, 10, 107.5),
(12, 2021, 11, 107.6),
(12, 2021, 12, 107.8);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2022, 1, 107.9),
(12, 2022, 2, 108.0),
(12, 2022, 3, 108.2),
(12, 2022, 4, 108.3),
(12, 2022, 5, 108.4),
(12, 2022, 6, 108.6),
(12, 2022, 7, 108.7),
(12, 2022, 8, 108.8),
(12, 2022, 9, 109.0),
(12, 2022, 10, 109.1),
(12, 2022, 11, 109.2),
(12, 2022, 12, 109.4);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2023, 1, 109.5),
(12, 2023, 2, 109.6),
(12, 2023, 3, 109.8),
(12, 2023, 4, 109.9),
(12, 2023, 5, 110.0),
(12, 2023, 6, 110.2),
(12, 2023, 7, 110.3),
(12, 2023, 8, 110.4),
(12, 2023, 9, 110.6),
(12, 2023, 10, 110.7),
(12, 2023, 11, 110.8),
(12, 2023, 12, 111.0);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(12, 2024, 1, 111.1),
(12, 2024, 2, 111.2),
(12, 2024, 3, 111.4),
(12, 2024, 4, 111.5),
(12, 2024, 5, 111.6),
(12, 2024, 6, 111.8),
(12, 2024, 7, 111.9),
(12, 2024, 8, 112.0),
(12, 2024, 9, 112.2),
(12, 2024, 10, 112.3),
(12, 2024, 11, 112.4),
(12, 2024, 12, 112.6);

-------------------------------------------------------------------------------------
-- Alemania (código pais = 13)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2018, 1, 101.7),
(13, 2018, 2, 101.9),
(13, 2018, 3, 102.0),
(13, 2018, 4, 102.2),
(13, 2018, 5, 102.4),
(13, 2018, 6, 102.6),
(13, 2018, 7, 102.7),
(13, 2018, 8, 102.9),
(13, 2018, 9, 103.1),
(13, 2018, 10, 103.3),
(13, 2018, 11, 103.4),
(13, 2018, 12, 103.6);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2019, 1, 103.7),
(13, 2019, 2, 103.9),
(13, 2019, 3, 104.0),
(13, 2019, 4, 104.2),
(13, 2019, 5, 104.4),
(13, 2019, 6, 104.6),
(13, 2019, 7, 104.7),
(13, 2019, 8, 104.9),
(13, 2019, 9, 105.1),
(13, 2019, 10, 105.3),
(13, 2019, 11, 105.4),
(13, 2019, 12, 105.6);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2020, 1, 105.7),
(13, 2020, 2, 105.9),
(13, 2020, 3, 106.0),
(13, 2020, 4, 106.2),
(13, 2020, 5, 106.4),
(13, 2020, 6, 106.5),
(13, 2020, 7, 106.7),
(13, 2020, 8, 106.9),
(13, 2020, 9, 107.0),
(13, 2020, 10, 107.2),
(13, 2020, 11, 107.4),
(13, 2020, 12, 107.5);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2021, 1, 107.7),
(13, 2021, 2, 107.9),
(13, 2021, 3, 108.0),
(13, 2021, 4, 108.2),
(13, 2021, 5, 108.4),
(13, 2021, 6, 108.5),
(13, 2021, 7, 108.7),
(13, 2021, 8, 108.9),
(13, 2021, 9, 109.0),
(13, 2021, 10, 109.2),
(13, 2021, 11, 109.4),
(13, 2021, 12, 109.5);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2022, 1, 109.7),
(13, 2022, 2, 109.9),
(13, 2022, 3, 110.1),
(13, 2022, 4, 110.3),
(13, 2022, 5, 110.4),
(13, 2022, 6, 110.6),
(13, 2022, 7, 110.8),
(13, 2022, 8, 111.0),
(13, 2022, 9, 111.1),
(13, 2022, 10, 111.3),
(13, 2022, 11, 111.5),
(13, 2022, 12, 111.7);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2023, 1, 111.9),
(13, 2023, 2, 112.1),
(13, 2023, 3, 112.3),
(13, 2023, 4, 112.5),
(13, 2023, 5, 112.6),
(13, 2023, 6, 112.8),
(13, 2023, 7, 113.0),
(13, 2023, 8, 113.2),
(13, 2023, 9, 113.3),
(13, 2023, 10, 113.5),
(13, 2023, 11, 113.7),
(13, 2023, 12, 113.9);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(13, 2024, 1, 114.1),
(13, 2024, 2, 114.3),
(13, 2024, 3, 114.5),
(13, 2024, 4, 114.7),
(13, 2024, 5, 114.8),
(13, 2024, 6, 115.0),
(13, 2024, 7, 115.2),
(13, 2024, 8, 115.4),
(13, 2024, 9, 115.5),
(13, 2024, 10, 115.7),
(13, 2024, 11, 115.9),
(13, 2024, 12, 116.1);

-------------------------------------------------------------------------------------
-- Francia (código pais = 14)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2018, 1, 101.6),
(14, 2018, 2, 101.7),
(14, 2018, 3, 101.8),
(14, 2018, 4, 101.9),
(14, 2018, 5, 102.1),
(14, 2018, 6, 102.2),
(14, 2018, 7, 102.4),
(14, 2018, 8, 102.5),
(14, 2018, 9, 102.7),
(14, 2018, 10, 102.8),
(14, 2018, 11, 102.9),
(14, 2018, 12, 103.1);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2019, 1, 103.2),
(14, 2019, 2, 103.3),
(14, 2019, 3, 103.5),
(14, 2019, 4, 103.6),
(14, 2019, 5, 103.7),
(14, 2019, 6, 103.9),
(14, 2019, 7, 104.0),
(14, 2019, 8, 104.2),
(14, 2019, 9, 104.3),
(14, 2019, 10, 104.5),
(14, 2019, 11, 104.6),
(14, 2019, 12, 104.7);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2020, 1, 104.8),
(14, 2020, 2, 105.0),
(14, 2020, 3, 105.1),
(14, 2020, 4, 105.3),
(14, 2020, 5, 105.4),
(14, 2020, 6, 105.6),
(14, 2020, 7, 105.7),
(14, 2020, 8, 105.9),
(14, 2020, 9, 106.0),
(14, 2020, 10, 106.2),
(14, 2020, 11, 106.3),
(14, 2020, 12, 106.5);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2021, 1, 106.6),
(14, 2021, 2, 106.8),
(14, 2021, 3, 106.9),
(14, 2021, 4, 107.1),
(14, 2021, 5, 107.2),
(14, 2021, 6, 107.4),
(14, 2021, 7, 107.5),
(14, 2021, 8, 107.7),
(14, 2021, 9, 107.8),
(14, 2021, 10, 108.0),
(14, 2021, 11, 108.1),
(14, 2021, 12, 108.3);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2022, 1, 108.4),
(14, 2022, 2, 108.6),
(14, 2022, 3, 108.7),
(14, 2022, 4, 108.9),
(14, 2022, 5, 109.0),
(14, 2022, 6, 109.2),
(14, 2022, 7, 109.3),
(14, 2022, 8, 109.5),
(14, 2022, 9, 109.6),
(14, 2022, 10, 109.8),
(14, 2022, 11, 109.9),
(14, 2022, 12, 110.1);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2023, 1, 110.3),
(14, 2023, 2, 110.4),
(14, 2023, 3, 110.6),
(14, 2023, 4, 110.7),
(14, 2023, 5, 110.9),
(14, 2023, 6, 111.0),
(14, 2023, 7, 111.2),
(14, 2023, 8, 111.3),
(14, 2023, 9, 111.5),
(14, 2023, 10, 111.6),
(14, 2023, 11, 111.8),
(14, 2023, 12, 111.9);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(14, 2024, 1, 112.1),
(14, 2024, 2, 112.2),
(14, 2024, 3, 112.4),
(14, 2024, 4, 112.5),
(14, 2024, 5, 112.7),
(14, 2024, 6, 112.8),
(14, 2024, 7, 113.0),
(14, 2024, 8, 113.1),
(14, 2024, 9, 113.3),
(14, 2024, 10, 113.4),
(14, 2024, 11, 113.6),
(14, 2024, 12, 113.7);

-------------------------------------------------------------------------------------
-- España (código pais = 15)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2018, 1, 103.2),
(15, 2018, 2, 103.3),
(15, 2018, 3, 103.4),
(15, 2018, 4, 103.5),
(15, 2018, 5, 103.6),
(15, 2018, 6, 103.7),
(15, 2018, 7, 103.8),
(15, 2018, 8, 103.9),
(15, 2018, 9, 104.0),
(15, 2018, 10, 104.1),
(15, 2018, 11, 104.2),
(15, 2018, 12, 104.3);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2019, 1, 104.4),
(15, 2019, 2, 104.5),
(15, 2019, 3, 104.6),
(15, 2019, 4, 104.7),
(15, 2019, 5, 104.8),
(15, 2019, 6, 104.9),
(15, 2019, 7, 105.0),
(15, 2019, 8, 105.1),
(15, 2019, 9, 105.2),
(15, 2019, 10, 105.3),
(15, 2019, 11, 105.4),
(15, 2019, 12, 105.5);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2020, 1, 105.6),
(15, 2020, 2, 105.7),
(15, 2020, 3, 105.8),
(15, 2020, 4, 105.9),
(15, 2020, 5, 106.0),
(15, 2020, 6, 106.1),
(15, 2020, 7, 106.2),
(15, 2020, 8, 106.3),
(15, 2020, 9, 106.4),
(15, 2020, 10, 106.5),
(15, 2020, 11, 106.6),
(15, 2020, 12, 106.7);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2021, 1, 106.8),
(15, 2021, 2, 106.9),
(15, 2021, 3, 107.0),
(15, 2021, 4, 107.1),
(15, 2021, 5, 107.2),
(15, 2021, 6, 107.3),
(15, 2021, 7, 107.4),
(15, 2021, 8, 107.5),
(15, 2021, 9, 107.6),
(15, 2021, 10, 107.7),
(15, 2021, 11, 107.8),
(15, 2021, 12, 107.9);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2022, 1, 108.0),
(15, 2022, 2, 108.1),
(15, 2022, 3, 108.2),
(15, 2022, 4, 108.3),
(15, 2022, 5, 108.4),
(15, 2022, 6, 108.5),
(15, 2022, 7, 108.6),
(15, 2022, 8, 108.7),
(15, 2022, 9, 108.8),
(15, 2022, 10, 108.9),
(15, 2022, 11, 109.0),
(15, 2022, 12, 109.1);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2023, 1, 109.3),
(15, 2023, 2, 109.4),
(15, 2023, 3, 109.5),
(15, 2023, 4, 109.6),
(15, 2023, 5, 109.7),
(15, 2023, 6, 109.8),
(15, 2023, 7, 109.9),
(15, 2023, 8, 110.0),
(15, 2023, 9, 110.1),
(15, 2023, 10, 110.2),
(15, 2023, 11, 110.3),
(15, 2023, 12, 110.4);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(15, 2024, 1, 110.6),
(15, 2024, 2, 110.7),
(15, 2024, 3, 110.8),
(15, 2024, 4, 110.9),
(15, 2024, 5, 111.0),
(15, 2024, 6, 111.1),
(15, 2024, 7, 111.2),
(15, 2024, 8, 111.3),
(15, 2024, 9, 111.4),
(15, 2024, 10, 111.5),
(15, 2024, 11, 111.6),
(15, 2024, 12, 111.7);

-------------------------------------------------------------------------------------
-- Italia (código pais = 16)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2018, 1, 102.4),
(16, 2018, 2, 102.5),
(16, 2018, 3, 102.6),
(16, 2018, 4, 102.7),
(16, 2018, 5, 102.8),
(16, 2018, 6, 102.9),
(16, 2018, 7, 103.0),
(16, 2018, 8, 103.1),
(16, 2018, 9, 103.2),
(16, 2018, 10, 103.3),
(16, 2018, 11, 103.4),
(16, 2018, 12, 103.5);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2019, 1, 103.6),
(16, 2019, 2, 103.7),
(16, 2019, 3, 103.8),
(16, 2019, 4, 103.9),
(16, 2019, 5, 104.0),
(16, 2019, 6, 104.1),
(16, 2019, 7, 104.2),
(16, 2019, 8, 104.3),
(16, 2019, 9, 104.4),
(16, 2019, 10, 104.5),
(16, 2019, 11, 104.6),
(16, 2019, 12, 104.7);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2020, 1, 104.8),
(16, 2020, 2, 104.9),
(16, 2020, 3, 105.0),
(16, 2020, 4, 105.1),
(16, 2020, 5, 105.2),
(16, 2020, 6, 105.3),
(16, 2020, 7, 105.4),
(16, 2020, 8, 105.5),
(16, 2020, 9, 105.6),
(16, 2020, 10, 105.7),
(16, 2020, 11, 105.8),
(16, 2020, 12, 105.9);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2021, 1, 106.0),
(16, 2021, 2, 106.1),
(16, 2021, 3, 106.2),
(16, 2021, 4, 106.3),
(16, 2021, 5, 106.4),
(16, 2021, 6, 106.5),
(16, 2021, 7, 106.6),
(16, 2021, 8, 106.7),
(16, 2021, 9, 106.8),
(16, 2021, 10, 106.9),
(16, 2021, 11, 107.0),
(16, 2021, 12, 107.1);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2022, 1, 107.2),
(16, 2022, 2, 107.3),
(16, 2022, 3, 107.4),
(16, 2022, 4, 107.5),
(16, 2022, 5, 107.6),
(16, 2022, 6, 107.7),
(16, 2022, 7, 107.8),
(16, 2022, 8, 107.9),
(16, 2022, 9, 108.0),
(16, 2022, 10, 108.1),
(16, 2022, 11, 108.2),
(16, 2022, 12, 108.3);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2023, 1, 108.5),
(16, 2023, 2, 108.6),
(16, 2023, 3, 108.7),
(16, 2023, 4, 108.8),
(16, 2023, 5, 108.9),
(16, 2023, 6, 109.0),
(16, 2023, 7, 109.1),
(16, 2023, 8, 109.2),
(16, 2023, 9, 109.3),
(16, 2023, 10, 109.4),
(16, 2023, 11, 109.5),
(16, 2023, 12, 109.6);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(16, 2024, 1, 109.8),
(16, 2024, 2, 109.9),
(16, 2024, 3, 110.0),
(16, 2024, 4, 110.1),
(16, 2024, 5, 110.2),
(16, 2024, 6, 110.3),
(16, 2024, 7, 110.4),
(16, 2024, 8, 110.5),
(16, 2024, 9, 110.6),
(16, 2024, 10, 110.7),
(16, 2024, 11, 110.8),
(16, 2024, 12, 110.9);

-------------------------------------------------------------------------------------
-- Australia (código pais = 17)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2018, 1, 107.1),
(17, 2018, 2, 107.3),
(17, 2018, 3, 107.5),
(17, 2018, 4, 107.6),
(17, 2018, 5, 107.7),
(17, 2018, 6, 107.8),
(17, 2018, 7, 107.9),
(17, 2018, 8, 108.0),
(17, 2018, 9, 108.1),
(17, 2018, 10, 108.2),
(17, 2018, 11, 108.3),
(17, 2018, 12, 108.4);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2019, 1, 108.5),
(17, 2019, 2, 108.6),
(17, 2019, 3, 108.7),
(17, 2019, 4, 108.8),
(17, 2019, 5, 108.9),
(17, 2019, 6, 109.0),
(17, 2019, 7, 109.1),
(17, 2019, 8, 109.2),
(17, 2019, 9, 109.3),
(17, 2019, 10, 109.4),
(17, 2019, 11, 109.5),
(17, 2019, 12, 109.6);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2020, 1, 109.7),
(17, 2020, 2, 109.8),
(17, 2020, 3, 109.9),
(17, 2020, 4, 110.0),
(17, 2020, 5, 110.1),
(17, 2020, 6, 110.2),
(17, 2020, 7, 110.3),
(17, 2020, 8, 110.4),
(17, 2020, 9, 110.5),
(17, 2020, 10, 110.6),
(17, 2020, 11, 110.7),
(17, 2020, 12, 110.8);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2021, 1, 110.9),
(17, 2021, 2, 111.0),
(17, 2021, 3, 111.1),
(17, 2021, 4, 111.2),
(17, 2021, 5, 111.3),
(17, 2021, 6, 111.4),
(17, 2021, 7, 111.5),
(17, 2021, 8, 111.6),
(17, 2021, 9, 111.7),
(17, 2021, 10, 111.8),
(17, 2021, 11, 111.9),
(17, 2021, 12, 112.0);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2022, 1, 112.1),
(17, 2022, 2, 112.3),
(17, 2022, 3, 112.5),
(17, 2022, 4, 112.7),
(17, 2022, 5, 112.9),
(17, 2022, 6, 113.1),
(17, 2022, 7, 113.3),
(17, 2022, 8, 113.5),
(17, 2022, 9, 113.7),
(17, 2022, 10, 113.9),
(17, 2022, 11, 114.1),
(17, 2022, 12, 114.3);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2023, 1, 114.5),
(17, 2023, 2, 114.7),
(17, 2023, 3, 114.9),
(17, 2023, 4, 115.1),
(17, 2023, 5, 115.3),
(17, 2023, 6, 115.5),
(17, 2023, 7, 115.7),
(17, 2023, 8, 115.9),
(17, 2023, 9, 116.1),
(17, 2023, 10, 116.3),
(17, 2023, 11, 116.5),
(17, 2023, 12, 116.7);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(17, 2024, 1, 116.9),
(17, 2024, 2, 117.1),
(17, 2024, 3, 117.3),
(17, 2024, 4, 117.5),
(17, 2024, 5, 117.7),
(17, 2024, 6, 117.9),
(17, 2024, 7, 118.1),
(17, 2024, 8, 118.3),
(17, 2024, 9, 118.5),
(17, 2024, 10, 118.7),
(17, 2024, 11, 118.9),
(17, 2024, 12, 119.1);

-------------------------------------------------------------------------------------
-- Nueva Zelanda (código pais = 18)

-- 2018
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2018, 1, 104.5),
(18, 2018, 2, 104.7),
(18, 2018, 3, 104.9),
(18, 2018, 4, 105.1),
(18, 2018, 5, 105.3),
(18, 2018, 6, 105.5),
(18, 2018, 7, 105.7),
(18, 2018, 8, 105.9),
(18, 2018, 9, 106.1),
(18, 2018, 10, 106.3),
(18, 2018, 11, 106.5),
(18, 2018, 12, 106.7);

-- 2019
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2019, 1, 106.9),
(18, 2019, 2, 107.1),
(18, 2019, 3, 107.3),
(18, 2019, 4, 107.5),
(18, 2019, 5, 107.7),
(18, 2019, 6, 107.9),
(18, 2019, 7, 108.1),
(18, 2019, 8, 108.3),
(18, 2019, 9, 108.5),
(18, 2019, 10, 108.7),
(18, 2019, 11, 108.9),
(18, 2019, 12, 109.1);

-- 2020
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2020, 1, 109.3),
(18, 2020, 2, 109.5),
(18, 2020, 3, 109.7),
(18, 2020, 4, 109.9),
(18, 2020, 5, 110.1),
(18, 2020, 6, 110.3),
(18, 2020, 7, 110.5),
(18, 2020, 8, 110.7),
(18, 2020, 9, 110.9),
(18, 2020, 10, 111.1),
(18, 2020, 11, 111.3),
(18, 2020, 12, 111.5);

-- 2021
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2021, 1, 111.7),
(18, 2021, 2, 111.9),
(18, 2021, 3, 112.1),
(18, 2021, 4, 112.3),
(18, 2021, 5, 112.5),
(18, 2021, 6, 112.7),
(18, 2021, 7, 112.9),
(18, 2021, 8, 113.1),
(18, 2021, 9, 113.3),
(18, 2021, 10, 113.5),
(18, 2021, 11, 113.7),
(18, 2021, 12, 113.9);

-- 2022
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2022, 1, 114.1),
(18, 2022, 2, 114.4),
(18, 2022, 3, 114.7),
(18, 2022, 4, 115.0),
(18, 2022, 5, 115.3),
(18, 2022, 6, 115.6),
(18, 2022, 7, 115.9),
(18, 2022, 8, 116.2),
(18, 2022, 9, 116.5),
(18, 2022, 10, 116.8),
(18, 2022, 11, 117.1),
(18, 2022, 12, 117.4);

-- 2023 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2023, 1, 117.7),
(18, 2023, 2, 118.0),
(18, 2023, 3, 118.3),
(18, 2023, 4, 118.6),
(18, 2023, 5, 118.9),
(18, 2023, 6, 119.2),
(18, 2023, 7, 119.5),
(18, 2023, 8, 119.8),
(18, 2023, 9, 120.1),
(18, 2023, 10, 120.4),
(18, 2023, 11, 120.7),
(18, 2023, 12, 121.0);

-- 2024 (inventado)
INSERT INTO ipc_mensual (pais, anio, mes, valor_ipc) VALUES
(18, 2024, 1, 121.3),
(18, 2024, 2, 121.6),
(18, 2024, 3, 121.9),
(18, 2024, 4, 122.2),
(18, 2024, 5, 122.5),
(18, 2024, 6, 122.8),
(18, 2024, 7, 123.1),
(18, 2024, 8, 123.4),
(18, 2024, 9, 123.7),
(18, 2024, 10, 124.0),
(18, 2024, 11, 124.3),
(18, 2024, 12, 124.6);

-------------------------------------------------------------------------------------
-- INSERCION DE DATOS DE PRECIOS DE VENTA APLICANDO INFLACION IPC POR PAIS
-----------------------------------------------------------------------------------
select * from PAISES ;
DO $$
DECLARE 
	V_MES_ANTERIOR INT;
	V_MES_ACTUAL INT;
	V_PAIS_ID INT = 7;
	V_ANIO INT;
	V_ANIO_ESTATICO INT;
BEGIN 

RAISE NOTICE 'INSERTANDO DATOS DE ENERO AÑO % PAIS %', V_ANIO, V_PAIS_ID;
INSERT INTO PRECIOS_VENTA (VEHICULO_ID,PAIS_ID,PRECIO,MONEDA_ID,FECHA_INICIO,ESTADO)
SELECT VEHICULO_ID,V_PAIS_ID PAIS_ID, PRECIO,MONEDA_ID,FECHA_INICIO,ESTADO
FROM PRECIOS_VENTA WHERE PAIS_ID = 7 AND FECHA_INICIO = '2018-01-01';

<<outer_loop>>
FOR A IN 2018..2024 LOOP
	V_ANIO_ESTATICO := A;
	V_ANIO := A;
	RAISE NOTICE 'PROCESANDO AÑO %', V_ANIO;

FOR I IN 2..13 LOOP
	
	V_MES_ANTERIOR := I-1;
	V_MES_ACTUAL := I;
	
	IF I = 13 THEN
		V_MES_ACTUAL := 1;
		V_ANIO := (V_ANIO + 1);
	END IF;

	IF V_ANIO = 2025 THEN
            RAISE NOTICE 'Se alcanzó el año %, terminando proceso.', V_ANIO;
            EXIT outer_loop;  -- Funciona porque el FOR tiene la etiqueta <<outer_loop>>
	END IF;

	RAISE NOTICE 'INSERTADO ANIO % Y MES %', V_ANIO, V_MES_ACTUAL;
	
	INSERT INTO PRECIOS_VENTA (VEHICULO_ID, PAIS_ID, PRECIO, MONEDA_ID, FECHA_INICIO)
	WITH IPC_MES_ANTERIOR AS (
		SELECT * FROM IPC_MENSUAL
		WHERE PAIS = V_PAIS_ID AND ANIO = V_ANIO AND MES = V_MES_ANTERIOR
	), IPC_MES_ACTUAL AS (
		SELECT * FROM IPC_MENSUAL
		WHERE PAIS = V_PAIS_ID AND ANIO = V_ANIO AND MES = V_MES_ACTUAL
	), INFLACION AS(
		SELECT ((((SELECT VALOR_IPC FROM  IPC_MES_ACTUAL) - (SELECT VALOR_IPC FROM IPC_MES_ANTERIOR)) / 100) * 100) INF
	)
	SELECT VEHICULO_ID,
		V_PAIS_ID PAIS_ID,
		(PRECIO*(1+((SELECT INF FROM INFLACION) / 100))) PRECIO,
		MONEDA_ID,
		TO_DATE(V_ANIO::TEXT || '-' || V_MES_ACTUAL::TEXT || '-01', 'YYYY-MM-DD') FECHA_INICIO
	FROM PRECIOS_VENTA
	WHERE PAIS_ID = V_PAIS_ID AND FECHA_INICIO = TO_DATE(V_ANIO_ESTATICO::TEXT || '-' || V_MES_ANTERIOR::TEXT || '-01', 'YYYY-MM-DD');
END LOOP;
END LOOP;
END;
$$;
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
VACUUM full VENTAS_MENSUALES;

DO $$
DECLARE
    VEHICULOS_DATA CURSOR(ANIO_INPUT INT) FOR SELECT id FROM VEHICULOS WHERE ANIO = ANIO_INPUT;
    PAISES_DATA CURSOR FOR SELECT id FROM PAISES;	
    V_PAIS INT;
    V_VEHICULO INT;
    V_ANIO INT;
    V_MES INT;
BEGIN
    FOR I IN 2018..2024 LOOP
        V_ANIO := I;
        FOR J IN 1..12 LOOP
            V_MES := J;

            OPEN PAISES_DATA;
            LOOP
                FETCH PAISES_DATA INTO V_PAIS;
                EXIT WHEN NOT FOUND;

                OPEN VEHICULOS_DATA(V_ANIO); -- aqui quiero la lista de vehiculos del 2018 luego la del 2018
                LOOP
                    FETCH VEHICULOS_DATA INTO V_VEHICULO;
                    EXIT WHEN NOT FOUND;

                    INSERT INTO VENTAS_MENSUALES (
                        VEHICULO_ID,
                        PAIS_ID,
                        ANIO,
                        MES,
                        CANTIDAD_VENDIDA
                    ) VALUES (
                        V_VEHICULO,
                        V_PAIS,
                        V_ANIO,
                        V_MES,
                        floor(random() * 200 + 1)::int
                    );

                END LOOP;
                CLOSE VEHICULOS_DATA;

            END LOOP;
            CLOSE PAISES_DATA;

        END LOOP;
    END LOOP;
END;
$$;
---------------------------------------------------------------------------------------------
-- OBTENER EL PRECIO DE VENTA DE UN VEHICULO POR PAIS, AÑO Y MES
---------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION precio_venta(
    p_vehiculo_id INT,
    p_pais_id INT,
    anio INT,
    mes INT
)
RETURNS DOUBLE PRECISION AS $$
DECLARE
    v_precio DOUBLE PRECISION;
BEGIN
    SELECT precio
    INTO v_precio
    FROM precios_venta
    WHERE vehiculo_id = p_vehiculo_id
      AND pais_id = p_pais_id
      AND EXTRACT(YEAR FROM fecha_inicio) = anio
      AND EXTRACT(MONTH FROM fecha_inicio) = mes
    ORDER BY fecha_inicio DESC
    LIMIT 1;

    RETURN COALESCE(v_precio, 0);
END;
$$ LANGUAGE plpgsql;
---------------------------------------------------------------------------------------------


INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2018, 22992300175428.59, 13.09, 89.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2019, 9762457134899.69, 2.23, 78.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2020, 10214472338664.79, 13.17, 109.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2021, 8121519974843.46, 14.1, 107.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2022, 5771166163485.80, 12.53, 64.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2023, 18677403712770.71, 12.65, 69.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Sudáfrica'), 2024, 16683183433526.48, 3.84, 67.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2018, 10230249110981.63, 3.05, 102.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2019, 12983588139222.12, 11.38, 91.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2020, 17773288612486.67, 0.66, 72.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2021, 19682960138084.20, 5.34, 94.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2022, 3413057625150.15, 5.07, 93.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2023, 22991786550941.21, 14.64, 50.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nigeria'), 2024, 3223714798006.01, 8.5, 52.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2018, 15977619819527.08, 2.97, 95.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2019, 24474836844050.22, 5.99, 88.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2020, 15809084723244.60, 13.65, 73.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2021, 3813975819875.18, 9.71, 102.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2022, 7784411827358.16, 8.91, 106.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2023, 16924282376320.81, 6.5, 98.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Egipto'), 2024, 1285827183199.76, 14.13, 75.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2018, 1520045911903.66, 5.34, 89.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2019, 20629447253625.77, 11.05, 101.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2020, 5501813794045.52, 6.83, 62.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2021, 23673340659740.65, 2.84, 109.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2022, 2808489943506.14, 4.55, 105.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2023, 3129818194606.99, 2.75, 83.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Kenia'), 2024, 7371370634449.90, 1.54, 60.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2018, 20818422633183.58, 8.01, 106.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2019, 16071930981061.56, 12.57, 97.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2020, 7722004699392.74, 7.51, 59.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2021, 4340516585038.57, 1.53, 105.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2022, 17277002095659.70, 3.88, 100.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2023, 15319063958303.29, 11.88, 93.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Argentina'), 2024, 6713818588140.06, 6.74, 79.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2018, 11800056955705.20, 8.64, 67.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2019, 21684783872361.73, 7.46, 94.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2020, 17484494064677.32, 9.88, 63.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2021, 21458663490305.14, 8.78, 91.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2022, 14017353263996.78, 12.48, 70.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2023, 17611011222726.31, 6.76, 82.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Brasil'), 2024, 24034906224840.18, 5.95, 73.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2018, 23354798114131.45, 11.72, 67.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2019, 3315032591560.65, 9.34, 77.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2020, 23131636977172.76, 13.97, 72.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2021, 9764009077545.96, 10.74, 108.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2022, 6643648023981.34, 3.26, 91.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2023, 4007862373657.88, 14.55, 74.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Estados Unidos'), 2024, 21986244990718.41, 13.32, 80.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2018, 16385632866709.33, 0.88, 64.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2019, 19022583649193.85, 14.88, 77.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2020, 15961505711604.99, 0.57, 61.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2021, 16234103919670.53, 5.27, 99.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2022, 11595505527261.02, 8.84, 52.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2023, 12654951370842.39, 0.35, 105.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Canadá'), 2024, 3701620089183.25, 7.56, 54.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2018, 7022300871615.72, 10.71, 81.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2019, 11990623549118.57, 8.7, 101.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2020, 13008030131489.02, 2.67, 74.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2021, 7951627913493.83, 5.06, 72.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2022, 9466298247790.83, 1.37, 100.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2023, 17544573817378.99, 8.11, 65.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'China'), 2024, 17961128590258.09, 11.16, 96.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2018, 24052696214557.84, 0.5, 84.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2019, 15605769788605.94, 6.75, 80.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2020, 15518647868927.35, 5.3, 102.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2021, 4512549266653.67, 5.52, 75.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2022, 24092431370534.07, 9.58, 92.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2023, 10414654514263.50, 7.86, 75.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'India'), 2024, 5753572163226.93, 12.54, 88.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2018, 18822014107922.86, 4.75, 63.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2019, 3836721265363.84, 8.97, 62.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2020, 13714097389224.09, 11.07, 62.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2021, 451162100755.80, 4.81, 75.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2022, 8793135184187.42, 12.38, 101.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2023, 19254508507691.25, 4.52, 62.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Japón'), 2024, 6441572259087.75, 12.65, 95.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2018, 22667991904046.03, 11.58, 108.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2019, 820527267253.54, 11.06, 95.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2020, 7384269091814.61, 5.03, 100.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2021, 22896576591718.36, 5.26, 67.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2022, 4637000583575.07, 10.43, 101.2);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2023, 6354595269456.55, 8.84, 69.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Corea del Sur'), 2024, 23576647397397.39, 3.36, 57.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2018, 19458117267196.54, 4.18, 69.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2019, 5605137908549.63, 12.37, 87.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2020, 23449368721866.67, 2.29, 65.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2021, 14013051155906.45, 12.85, 57.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2022, 21268688036802.52, 5.46, 57.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2023, 22318197660227.11, 4.58, 87.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Alemania'), 2024, 1487293175086.87, 13.22, 100.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2018, 7533340662216.29, 10.34, 91.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2019, 6450983230449.75, 13.99, 51.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2020, 7224849889028.40, 7.25, 87.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2021, 23606192821032.39, 5.1, 59.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2022, 20342774261781.88, 14.28, 93.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2023, 23059540188931.50, 11.49, 65.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Francia'), 2024, 9144319951652.56, 0.8, 85.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2018, 22339007391116.79, 14.23, 59.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2019, 5035703847200.05, 9.01, 95.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2020, 3606204864746.11, 0.12, 56.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2021, 7446778635215.22, 11.21, 55.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2022, 23098996729181.73, 1.27, 103.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2023, 7723685845533.70, 5.53, 74.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'España'), 2024, 22091081670813.06, 4.21, 80.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2018, 19571722286242.50, 1.31, 95.6);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2019, 11457651570594.56, 9.41, 75.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2020, 15757977109149.74, 5.29, 69.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2021, 6078838117495.97, 3.93, 77.0);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2022, 1224784102643.81, 0.24, 81.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2023, 10012705094798.00, 8.43, 89.4);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Italia'), 2024, 15696343927226.42, 0.1, 51.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2018, 17720647521289.79, 3.16, 108.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2019, 14174740143898.22, 9.38, 87.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2020, 9361417274910.42, 13.89, 97.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2021, 2185145536741.43, 11.65, 68.7);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2022, 9301767989315.20, 5.51, 74.9);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2023, 8776627978296.97, 2.72, 70.3);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Australia'), 2024, 11697672167380.08, 5.23, 51.8);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2018, 15607014404478.69, 5.19, 53.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2019, 16622495850045.85, 9.45, 64.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2020, 11780728301353.85, 4.13, 77.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2021, 1770362377574.32, 7.49, 52.1);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2022, 19924949506612.90, 0.43, 103.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2023, 18403707179390.05, 9.41, 63.5);
INSERT INTO indicadores_economicos_anuales (pais_id, anio, pib_valor, tasa_interes, confianza_consumidor) VALUES ((SELECT id FROM paises WHERE nombre = 'Nueva Zelanda'), 2024, 21526467362962.56, 1.11, 87.9);

