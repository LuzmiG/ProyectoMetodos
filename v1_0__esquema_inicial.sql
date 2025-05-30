create database metodos_numericos;

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
    vehiculo_id INT NOT NULL REFERENCES vehiculos(id),
    pais_id INT NOT NULL REFERENCES paises(id),
    anio INT NOT NULL,
    mes INT NOT NULL CHECK (mes >= 1 AND mes <= 12),
    cantidad_vendida INT NOT NULL DEFAULT 0,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(1) DEFAULT 'A',
    UNIQUE (vehiculo_id, pais_id, anio, mes));
	
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