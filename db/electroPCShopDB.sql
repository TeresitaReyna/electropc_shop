drop database electroPCShopDB; /* Usar en caso de requerir borrar la base de datos */
create database electroPCShopDB;
use electroPCShopDB; /* Usar para trabajar dentro de la base de datos */

create table usuarios(
	id int auto_increment primary key,
    nombre_usuario varchar(100) not null,
    apellidos_usuario varchar(100) not null,
    celular varchar(10) not null,
    email varchar(100) not null,
    pass varchar(100) not null,
    domicilio text not null,
    forma_pago int,
    created_at timestamp default now()
)engine=InnoDB default charset=utf8 collate=utf8_spanish_ci;

insert into usuarios (nombre_usuario, apellidos_usuario, celular, email, pass, domicilio, forma_pago) 
	values ("Josué Alberto", "Lopez Flores", "4442074330", "josueflores@hotmail.com", "1234", "Avenida de las Presas 117", 1);
  
create table productos(
	id int auto_increment primary key,
    nombre_producto varchar(100) not null,
    categoria varchar(100) not null,
    imagen_producto varchar(100) not null,
    precio float not null
)engine=InnoDB default charset=utf8 collate=utf8_spanish_ci;

select * from usuarios;
drop table usuarios;
