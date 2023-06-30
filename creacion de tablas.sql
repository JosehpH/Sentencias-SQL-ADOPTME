CREATE TABLE Usuarios(
	id_usuario int NOT NULL IDENTITY PRIMARY KEY ,
	nombres nvarchar(20) NOT NULL,
	apellido_paterno nvarchar(20) NOT NULL,
	apellido_materno nvarchar(20) NOT NULL,
	DNI char(8) NOT NULL,
	correo nvarchar(20) NOT NULL,
	numero_telefonico char(9) NOT NULL,
	contrasenia nvarchar(30) NOT NULL,
	id_mascota int NOT NULL,
	id_ubicacion int NOT NULL
)


CREATE TABLE Roles (
	id_rol int IDENTITY PRIMARY KEY NOT NULL,
	nombre_rol nvarchar(20) NOT NULL )


CREATE TABLE Usuario_Roles(
	id_usuario int NOT NULL ,
	id_rol int NOT NULL )


CREATE TABLE Mascotas(
	id_mascota int IDENTITY PRIMARY KEY NOT NULL,
	id_usuario int NOT NULL,
	nombre nvarchar(20) NOT NULL,
	origen nvarchar(30) NOT NULL,
	edad int NOT NULL,
	descripcion nvarchar(200) NOT NULL,
	imagen varbinary(5) NOT NULL )


CREATE TABLE Especies_Mascotas (
	id_especie int IDENTITY PRIMARY KEY NOT NULL,
	id_mascota int NOT NULL,
	nombre_especie nvarchar(20) NOT NULL )



CREATE TABLE Razas_Mascotas (
	id_raza int IDENTITY PRIMARY KEY NOT NULL,
	id_mascota int NOT NULL,
	nombre_raza nvarchar(20) NOT NULL )

--20
CREATE TABLE Vacunas_Mascotas(
	id_vacuna int IDENTITY PRIMARY KEY NOT NULL,
	nombre_vacuna nvarchar(100) NOT NULL )

--100
CREATE TABLE Condiciones_Medicas(
	id_condicion_medica int IDENTITY PRIMARY KEY NOT NULL,
	descripcion nvarchar(200) NOT NULL )

CREATE TABLE Historial_Medico(
	id_historia int IDENTITY PRIMARY KEY NOT NULL,
	id_mascota int NOT NULL,
	id_vacuna int NOT NULL,
	id_condicion_medica int NOT NULL,
	fecha_diagnostico datetime NOT NULL,
	descripcion_tratamiento nvarchar(200) NOT NULL )





CREATE TABLE Publicaciones(
	id_publicacion int IDENTITY PRIMARY KEY NOT NULL,
	id_usuario int NOT NULL,
	fecha_publicacion datetime NOT NULL,
	contenido nvarchar(100) NOT NULL )


CREATE TABLE Solicitudes_Adopcion(
	id_solicitud int IDENTITY PRIMARY KEY NOT NULL,
	id_usuario int NOT NULL,
	fecha_solicitud datetime NOT NULL,
	estado_actual nvarchar(10) NOT NULL )


CREATE TABLE Reportes_Mascotas(
	id_reporte int IDENTITY PRIMARY KEY NOT NULL,
	id_usuario int NOT NULL,
	id_mascota int NOT NULL,
	fecha_reporte datetime NOT NULL,
	detalle_reporte nvarchar(100) NOT NULL )


 	CREATE TABLE Donaciones(
	id_donacion int IDENTITY PRIMARY KEY NOT NULL,
	id_usuario int NOT NULL,
	id_categoria_donacion int NOT NULL,
	fecha_donacion datetime NOT NULL )
CREATE TABLE Conversaciones(
	id_conversacion int IDENTITY PRIMARY KEY NOT NULL, 
	id_usuario int NOT NULL,
	informacion_mensaje nvarchar(100) NOT NULL,
	fecha datetime NOT NULL )


CREATE TABLE Tipo_Donaciones(
	id_tipo_donacion int IDENTITY PRIMARY KEY NOT NULL,
	descripcion_donacion NVARCHAR(100) NOT NULL,
	monto_donacion money NOT NULL )

CREATE TABLE Ubicacion(
	id_ubicacion int IDENTITY PRIMARY KEY NOT NULL,
	distrito NVARCHAR(50) NOT NULL,
	provincia NVARCHAR(50) NOT NULL,
	departamento NVARCHAR(50) NOT NULL,
	mas_detalles NVARCHAR(50) )

CREATE TABLE Formulario_Adopcion(
	id_formulario int IDENTITY PRIMARY KEY NOT NULL,
	preguntas NVARCHAR(100) NOT NULL,
	respuestas NVARCHAR(100) NOT NULL
)
--Agregar las llaves foráneas a las tablas que lo requieren




ALTER TABLE Usuarios
ADD FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);

ALTER TABLE Usuarios
ADD FOREIGN KEY (id_ubicacion) REFERENCES Ubicacion(id_ubicacion);

ALTER TABLE Usuario_Roles
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Usuario_Roles
ADD FOREIGN KEY (id_rol) REFERENCES Roles(id_rol);

ALTER TABLE Mascotas
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Especies_Mascotas
ADD FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);

ALTER TABLE Razas_Mascotas
ADD FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);

ALTER TABLE Historial_Medico
ADD FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);

ALTER TABLE Historial_Medico
ADD FOREIGN KEY (id_vacuna) REFERENCES Vacunas_Mascotas(id_vacuna);

ALTER TABLE Historial_Medico
ADD FOREIGN KEY (id_condicion_medica) REFERENCES Condiciones_Medicas(id_condicion_medica);

ALTER TABLE Publicaciones
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Solicitudes_Adopcion
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Reportes_Mascotas
ADD FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);

ALTER TABLE Reportes_Mascotas
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Conversaciones
ADD FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Donaciones
ADD FOREIGN KEY (id_categoria_donacion) REFERENCES Tipo_Donaciones(id_tipo_donacion);
