-- Tabla servicio
CREATE TABLE servicio (
    id_servicio SERIAL PRIMARY KEY,
    estilo VARCHAR(255),
    duracion TIME,
    tiempo TIME
);

-- Tabla estilo
CREATE TABLE estilo (
    id_estilo SERIAL PRIMARY KEY,
    corte_recto VARCHAR(255),
    degradado VARCHAR(255),
    corte_mariposa VARCHAR(255),
    id_servicio INTEGER NOT NULL,
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla cita
CREATE TABLE cita (
    id_cita SERIAL PRIMARY KEY,
    fecha VARCHAR(255),
    hora TIME,
    id_estilo INTEGER NOT NULL,
    FOREIGN KEY (id_estilo) REFERENCES estilo(id_estilo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla detalle_cita
CREATE TABLE detalle_cita (
    id_detalle SERIAL PRIMARY KEY,
    observación VARCHAR(255),
    lugar VARCHAR(255),
    id_cita INTEGER NOT NULL,
    FOREIGN KEY (id_cita) REFERENCES cita(id_cita) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    telefono VARCHAR(255),
    direccion TEXT,
    id_servicio INTEGER NOT NULL,
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla empleado
CREATE TABLE empleado (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    especialidad VARCHAR(255),
    descripcion VARCHAR(255),
    id_detalle INTEGER,
    FOREIGN KEY (id_detalle) REFERENCES detalle_cita(id_detalle) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla recibo
CREATE TABLE recibo (
    id_recibo SERIAL PRIMARY KEY,
    monto DECIMAL(10, 2),
    fecha VARCHAR(255),
    forma_pago DECIMAL(10, 2) NOT NULL,
    id_empleado INTEGER NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado) ON DELETE RESTRICT ON UPDATE CASCADE
);