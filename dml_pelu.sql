-- Inserción en la tabla servicio
INSERT INTO servicio (estilo, duracion, tiempo)
VALUES 
('Corte de cabello para dama', '00:30:00', '00:45:00'),
('Tinte de cabello', '01:00:00', '01:30:00');

-- Inserción en la tabla estilo (referenciando la tabla servicio)
INSERT INTO estilo (corte_recto, degradado, corte_mariposa, id_servicio)
VALUES 
('Corte recto clásico', 'Degradado suave', 'Corte mariposa elegante', 1),
('Corte recto moderno', 'Degradado alto', 'Corte mariposa juvenil', 2);

-- Inserción en la tabla cita (referenciando la tabla estilo)
INSERT INTO cita (fecha, hora, id_estilo)
VALUES 
('2025-05-18', '10:00:00', 1),
('2025-05-18', '12:00:00', 2);

-- Inserción en la tabla detalle_cita (referenciando la tabla cita)
INSERT INTO detalle_cita (observación, lugar, id_cita)
VALUES 
('Cliente solicita corte de cabello recto clásico', 'Peluquería Tu Pelu Express', 1),
('Cliente solicita tinte y corte degradado', 'Peluquería Tu Pelu Express', 2);

-- Inserción en la tabla cliente (referenciando la tabla servicio)
INSERT INTO cliente (nombre, apellido, telefono, direccion, id_servicio)
VALUES 
('Ana', 'Gómez', '0987654321', 'Calle Ficticia 123', 1),
('Carlos', 'Ramírez', '0976543210', 'Avenida Libertad 456', 2);

-- Inserción en la tabla empleado (referenciando la tabla detalle_cita)
INSERT INTO empleado (nombre, especialidad, descripcion, id_detalle)
VALUES 
('María Pérez', 'Estilista', 'Especialista en cortes de cabello y peinados', 1),
('Juan López', 'Colorista', 'Experto en tintes y tratamientos capilares', 2);

-- Inserción en la tabla recibo (referenciando la tabla empleado)
INSERT INTO recibo (monto, fecha, forma_pago, id_empleado)
VALUES 
(100.00, '2025-05-18', 100.00, 1),
(150.00, '2025-05-18', 150.00, 2);