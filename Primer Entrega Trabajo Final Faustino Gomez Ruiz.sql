create schema trabajofinal_fgr;

use trabajofinal_fgr;

create table vehiculo (
    id_vehiculo numeric primary key,
    cedula_vehiculo varchar(20),
    id_titular numeric,
    marca varchar(20),
    modelo varchar(20)
);

create table titular (
id_titular numeric primary key,
id_vehiculo numeric,
dni_titular numeric,
nombre_titular varchar(20),
apellido_titular varchar(20),
foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

create table comprador (
	id_comprador numeric primary key,
    id_titular numeric,
    id_vehiculo numeric,
    nombre_apellido varchar(30),
    foreign key (id_titular) references titular(id_titular),
    foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

create table multas (
id_multas numeric primary key,
id_titular numeric,
id_vehiculo numeric,
fecha date,
infraccion varchar(50),
monto Decimal(10,2),
foreign key (id_titular) references titular(id_titular),
foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

create table mantenimiento_vehiculo (
id_mantenimiento numeric primary key,
id_titular numeric,
id_vehiculo numeric,
fecha date,
descripcion varchar(50),
monto decimal(10,2),
foreign key (id_titular) references titular(id_titular),
foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

create table seguro (
id_seguro numeric primary key,
id_titular numeric,
id_vehiculo numeric,
foreign key (id_titular) references titular(id_titular),
foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

    