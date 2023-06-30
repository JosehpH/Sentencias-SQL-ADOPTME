-- Datos para la tabla Usuarios

INSERT INTO Usuarios (nombres, apellido_paterno, apellido_materno, DNI, correo, numero_telefonico, contrasenia, id_mascota, id_ubicacion)
VALUES
    ('Juan', 'Perez', 'Gomez', '12345678', 'juan@example.com', '123456789', 'contrasenia1', 1, 1),
    ('Maria', 'Lopez', 'Garcia', '87654321', 'maria@example.com', '987654321', 'contrasenia2', 2, 2),
    ('Pedro', 'Gonzalez', 'Rodriguez', '56789012', 'pedro@example.com', '567890123', 'contrasenia3', 3, 3),
    ('Laura', 'Fernandez', 'Martinez', '21098765', 'laura@example.com', '210987654', 'contrasenia4', 4, 4),
    ('Ana', 'Torres', 'Sanchez', '45678901', 'ana@example.com', '456789012', 'contrasenia5', 5, 5),
    ('Carlos', 'Ruiz', 'Lopez', '10987654', 'carlos@example.com', '109876543', 'contrasenia6', 6, 6),
    ('Sofia', 'Vargas', 'Hernandez', '65432109', 'sofia@example.com', '654321098', 'contrasenia7', 7, 7),
    ('Luis', 'Mendoza', 'Guzman', '54321098', 'luis@example.com', '543210987', 'contrasenia8', 8, 8),
    ('Mariana', 'Castillo', 'Reyes', '98765432', 'mariana@example.com', '987654321', 'contrasenia9', 9, 9),
    ('Andres', 'Lara', 'Soto', '32109876', 'andres@example.com', '321098765', 'contrasenia10', 10, 10);

-- Datos para la tabla Roles
INSERT INTO Roles (nombre_rol)
VALUES
    ('Administrador'),
    ('Usuario'),
    ('Voluntario'),
    ('Adoptante');

-- Datos para la tabla Usuario_Roles
INSERT INTO Usuario_Roles (id_usuario, id_rol)
VALUES
    (1, 1),
    (2, 2),
    (3, 2),
    (4, 3),
    (5, 3),
    (6, 2),
    (7, 4),
    (8, 2),
    (9, 2),
    (10, 2);

-- Datos para la tabla Mascotas
INSERT INTO Mascotas (id_usuario,nombre, origen, edad, descripcion, imagen)
VALUES
    (1, 'Max', 'Rescatada', 2, 'Max es un perro muy juguetón y cariñoso. Está buscando un hogar amoroso.', cast('imagen' as varbinary(5))),
    (2, 'Luna', 'Abandonada', 1, 'Luna es una gata tranquila y le encanta dormir. Está esterilizada y vacunada.', cast('imagen' as varbinary(5))),
    (3, 'Rocky', 'Rescatado', 3, 'Rocky es un perro de raza mixta muy activo. Ideal para una familia deportista.', cast('imagen' as varbinary(5))),
    (4, 'Mia', 'Encontrada', 4, 'Mia es una gata muy sociable y le encanta jugar con pelotas.', cast('imagen' as varbinary(5))),
    (5, 'Toby', 'Rescatado', 2, 'Toby es un perro pequeño y adorable. Está entrenado para hacer sus necesidades en el patio.', cast('imagen1' as varbinary(5))),
    (6, 'Simba', 'Abandonado', 1, 'Simba es un gato curioso y le gusta explorar su entorno. Está desparasitado.', cast('imagen' as varbinary(5))),
    (7, 'Lucky', 'Rescatado', 2, 'Lucky es un perro muy fiel y protector. Ideal para una familia con niños.', cast('imagen' as varbinary(5))),
    (8, 'Nala', 'Encontrada', 3, 'Nala es una gata cariñosa y le gusta que le acaricien la cabeza.', cast('imagen' as varbinary(5))),
    (9, 'Boby', 'Abandonado', 4, 'Boby es un perro muy obediente y aprende rápido. Está esterilizado.', cast('imagen' as varbinary(5))),
    (10, 'Milo', 'Rescatado', 2, 'Milo es un gato juguetón y le encanta perseguir plumas.', cast('imagen' as varbinary(5)));

-- Datos para la tabla Especies_Mascotas
INSERT INTO Especies_Mascotas (id_mascota, nombre_especie)
VALUES
    (1, 'Perro'),
    (2, 'Gato'),
    (3, 'Perro'),
    (4, 'Gato'),
    (5, 'Perro'),
    (6, 'Gato'),
    (7, 'Perro'),
    (8, 'Gato'),
    (9, 'Perro'),
    (10, 'Gato');

-- Datos para la tabla Razas_Mascotas
INSERT INTO Razas_Mascotas (id_mascota, nombre_raza)
VALUES
    (1, 'Labrador'),
    (3, 'Bulldog'),
    (5, 'Chihuahua'),
    (7, 'Golden Retriever'),
    (9, 'Dálmata'),
    (2,'Persa'),
    (4,'Siamese'),
    (6,'Bengalí'),
    (8,'Azul Ruso'),
    (10,'Birmano');

-- Datos para la tabla Vacunas_Mascotas
INSERT INTO Vacunas_Mascotas (nombre_vacuna)
VALUES
    ('Vacuna contra la rabia'),
    ('Vacuna combinada DHPP'),
    ('Vacuna contra la tos de las perreras '),
    ('Vacuna contra la enfermedad de Lyme'),
    ('Vacuna contra la enfermedad de la garrapata'),
    ('Vacuna contra la enfermedad de la piña '),
    ('Vacuna contra la enfermedad de la hepatitis de Rubarth'),
    ('Vacuna combinada FVRCP'),
    ('Vacuna contra la leucemia felina'),
    ('Vacuna contra la clamidia felina'),
    ('Vacuna contra la peritonitis infecciosa felina'),
    ('Vacuna contra la inmunodeficiencia felina ');

-- Datos para la tabla Condiciones_Medicas
INSERT INTO Condiciones_Medicas (descripcion)
VALUES
    ('Enfermedad del corazón, como la enfermedad valvular y la insuficiencia cardíaca congestiva'),
    ('Enfermedad respiratorias, como la traqueobronquitis infecciosa (tos de las perreras) y la neumonía'),
    ('Enfermedad gastrointestinales, como la gastritis, la pancreatitis y la enfermedad inflamatoria intestinal'),
    ('Enfermedad dermatológicas, como alergias, infecciones de la piel y dermatitis atópica'),
    ('Enfermedad endocrinas, como la diabetes mellitus, el hipotiroidismo y la enfermedad de Cushing'),
    ('Enfermedad del sistema urinario, como la enfermedad del tracto urinario inferior felino (FLUTD) y la insuficiencia renal'),
    ('Enfermedad oculares, como el glaucoma, las cataratas y la conjuntivitis'),
    ('Enfermedad ortopédicas, como la displasia de cadera, la ruptura de ligamentos y la osteoartritis'),
    ('Enfermedad del sistema nervioso, como la epilepsia, la hernia de disco y el síndrome vestibular'),
    ('Enfermedad neoplásicas, como el cáncer de mama, el linfoma y los tumores de hueso'),
    ('Enfermedad del tracto urinario, como la obstrucción uretral, la cistitis idiopática y los cálculos urinarios'),
    ('Enfermedad dentales, como la enfermedad periodontal, la gingivitis y los abscesos dentales');

-- Datos para la tabla Historial_Medico
INSERT INTO Historial_Medico (id_mascota, id_vacuna, id_condicion_medica, fecha_diagnostico, descripcion_tratamiento)
VALUES
    (1, 1, 1, '2022-01-01', 'Tratamiento para condición 1'),
    (2, 2, 2, '2022-02-02', 'Tratamiento para condición 2'),
    (3, 3, 3, '2022-03-03', 'Tratamiento para condición 3'),
    (4, 4, 4, '2022-04-04', 'Tratamiento para condición 4'),
    (5, 5, 5, '2022-05-05', 'Tratamiento para condición 5'),
    (6, 6, 6, '2022-06-06', 'Tratamiento para condición 6'),
    (7, 7, 7, '2022-07-07', 'Tratamiento para condición 7'),
    (8, 8, 8, '2022-08-08', 'Tratamiento para condición 8'),
    (9, 9, 9, '2022-09-09', 'Tratamiento para condición 9'),
    (10, 10, 10, '2022-10-10', 'Tratamiento para condición 10');

-- Datos para la tabla Publicaciones
INSERT INTO Publicaciones (id_usuario, fecha_publicacion, contenido)
VALUES
    (1, '2022-01-01', '¡Busco hogar para Max! Es un perro muy cariñoso y obediente.'),
    (2, '2022-02-02', 'Luna busca familia que le brinde mucho amor y cuidados.'),
    (3, '2022-03-03', 'Rocky está en busca de un compañero de aventuras.'),
    (4, '2022-04-04', 'Mia necesita un hogar donde la consientan y jueguen con ella.'),
    (5, '2022-05-05', 'Toby espera encontrar una familia que lo ame incondicionalmente.'),
    (6, '2022-06-06', 'Simba está listo para ser el rey de tu hogar.'),
    (7, '2022-07-07', 'Lucky es un perro fiel y protector. Ideal para una familia.'),
    (8, '2022-08-08', 'Nala busca un hogar donde pueda recibir mucho cariño.'),
    (9, '2022-09-09', 'Boby es un perro obediente y leal. Espera encontrar una familia.'),
    (10, '2022-10-10', 'Milo es un gato juguetón y cariñoso. ¿Quieres adoptarlo?');

-- Datos para la tabla Solicitudes_Adopcion
INSERT INTO Solicitudes_Adopcion (id_usuario, fecha_solicitud, estado_actual)
VALUES
    (1, '2022-01-01', 'Pendiente'),
    (2, '2022-02-02', 'Aprobada'),
    (3, '2022-03-03', 'Rechazada'),
    (4, '2022-04-04', 'Pendiente'),
    (5, '2022-05-05', 'Aprobada'),
    (6, '2022-06-06', 'Pendiente'),
    (7, '2022-07-07', 'Rechazada'),
    (8, '2022-08-08', 'Pendiente'),
    (9, '2022-09-09', 'Aprobada'),
    (10, '2022-10-10', 'Pendiente');
-- Datos para la tabla Reportes_Mascotas
INSERT INTO Reportes_Mascotas (id_usuario, id_mascota, fecha_reporte, detalle_reporte)
VALUES
(1, 1, '2022-01-01', 'Mascota perdida'),
(2, 1, '2022-01-02', 'Mascota agresiva'),
(3, 2, '2022-02-03', 'Mascota abandonada'),
(4, 3, '2022-03-04', 'Mascota enferma'),
(5, 4, '2022-04-05', 'Mascota maltratada'),
(6, 4, '2022-04-06', 'Mascota en peligro'),
(7, 5, '2022-05-07', 'Mascota sin hogar'),
(8, 6, '2022-06-08', 'Mascota robada'),
(9, 7, '2022-07-09', 'Mascota perdida'),
(10, 8, '2022-08-10', 'Mascota abandonada');

-- Datos para la tabla Donaciones
INSERT INTO Donaciones (id_usuario, id_categoria_donacion, fecha_donacion)
VALUES
(1, 1, '2022-01-01'),
(2, 2, '2022-02-02'),
(3, 1, '2022-03-03'),
(4, 3, '2022-04-04'),
(5, 2, '2022-05-05'),
(6, 1, '2022-06-06'),
(7, 3, '2022-07-07'),
(8, 2, '2022-08-08'),
(9, 1, '2022-09-09'),
(10, 3, '2022-10-10');

-- Datos para la tabla Conversaciones
INSERT INTO Conversaciones (id_usuario, informacion_mensaje, fecha)
VALUES
(1, 'Hola, estoy interesado en adoptar una mascota.', '2022-01-01'),
(2, 'Claro, cuéntame qué tipo de mascota buscas.', '2022-01-02'),
(3, 'Tengo algunas preguntas sobre el proceso de adopción.', '2022-02-03'),
(4, 'Me gustaría donar algunos suministros para las mascotas.', '2022-03-04'),
(5, '¿Cómo puedo colaborar con el refugio de animales?', '2022-04-05'),
(6, 'Estoy interesado en ofrecer mi hogar temporal para una mascota.', '2022-05-06'),
(7, 'Quisiera reportar un caso de maltrato animal.', '2022-06-07'),
(8, '¿Cuáles son los requisitos para adoptar una mascota?', '2022-07-08'),
(9, 'Me gustaría conocer más sobre el programa de voluntariado.', '2022-08-09'),
(10, 'Tengo algunas dudas sobre las vacunas para las mascotas.', '2022-09-10');

-- Datos para la tabla Tipo_Donaciones
INSERT INTO Tipo_Donaciones (descripcion_donacion, monto_donacion)
VALUES
('Alimentos para mascotas', 50.00),
('Suministros médicos', 100.00),
('Donación monetaria', 200.00),
('Juguetes y accesorios', 30.00),
('Ropa y mantas', 20.00),
('Otros', 50.00),
('Donación mensual', 500.00),
('Donación única', 1000.00),
('Patrocinio de adopciones', 250.00),
('Donación de tiempo y habilidades', 0.00);

-- Datos para la tabla Ubicacion
INSERT INTO Ubicacion (distrito, provincia, departamento, mas_detalles)
VALUES
('Miraflores', 'Lima', 'Lima', 'Cerca del parque principal'),
('San Isidro', 'Lima', 'Lima', 'Avenida principal'),
('La Molina', 'Lima', 'Lima', 'Barrio residencial'),
('San Borja', 'Lima', 'Lima', 'Cerca del centro comercial'),
('Barranco', 'Lima', 'Lima', 'Cerca del malecón'),
('Surco', 'Lima', 'Lima', 'Cerca del supermercado'),
('Lince', 'Lima', 'Lima', 'Zona comercial'),
('Callao', 'Callao', 'Callao', 'Cerca del puerto'),
('Chorrillos', 'Lima', 'Lima', 'Frente al mar'),
('Breña', 'Lima', 'Lima', 'Cerca del hospital');

-- Datos para la tabla Formulario_Adopcion
INSERT INTO Formulario_Adopcion (preguntas, respuestas)
VALUES
('¿Cuál es tu experiencia previa con mascotas?', 'He tenido perros y gatos durante toda mi vida.'),
('¿Tienes un hogar seguro y espacioso para una mascota?', 'Sí, vivo en una casa con patio grande.'),
('¿Cuántas horas al día puedes dedicarle a una mascota?', 'Puedo dedicarle al menos 4 horas al día.'),
('¿Aceptas que realicemos una visita a tu hogar antes de la adopción?', 'Por supuesto, quiero asegurarme de que el ambiente sea adecuado.'),
('¿Estás dispuesto a cubrir los gastos de alimentación y cuidado veterinario?', 'Sí, estoy preparado para asumir esos gastos.'),
('¿Cómo te comprometes a educar y socializar a la mascota?', 'Me comprometo a brindarle entrenamiento y socialización adecuada.'),
('¿Tienes otros animales en casa?', 'No, actualmente no tengo otros animales.'),
('¿Por qué estás interesado en adoptar una mascota?', 'Quiero tener un compañero fiel y brindarle un hogar amoroso.'),
('¿Has adoptado antes alguna mascota?', 'Sí, he adoptado un perro en el pasado.'),
('¿Qué tipo de mascota estás buscando?', 'Estoy buscando adoptar un gato joven y juguetón.');