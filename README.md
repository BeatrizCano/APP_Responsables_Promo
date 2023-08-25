
<h1 align="center"> CoderFlow_ </h1>



## Descripción del proyecto

Este repositorio contiene el código fuente y los recursos para la creación de una aplicación web de gestión de datos de coders para Factoría F5. La app está diseñada para centralizar y organizar la información relacionada con los procesos de selección y la participación de coders en los Bootcamps.

El objetivo de esta aplicación es proporcionar una plataforma eficiente y visual para que los responsables de formación puedan acceder a todos los datos de manera eficiente.


## Funcionalidades principales

La app permite a l@s Responsables de formación: 

 - Visualizar, añadir, actualizar y borrar los datos de los coders.
 - Visualizar, añadir, filtrar, actualizar y borrar los datos de los diferentes bootcamps. 


## Tecnologías utilizadas

- HTML
- CSS
- PHP
- MySQL

## Instalación

Seguir las siguientes instrucciones para crear una copia del proyecto y ejecutarla en local.

<h4>Prerequisitos</h4>

- PHP 8 o superior
- Servidor web (Apache)
- Base de datos MySQL

<h4>Instalación</h4>

1. Clonar repositorio
2. Instalar las dependencias del proyecto `composer install` y "phpunit" para realizar los test

## Rutas
Se ha creado una ruta propia para el proyecto especificada en el index.php. Para ver la home: http://localhost/proyectos/coderflow/public/
y para ver las dos rutas se añadiría "coders" o "promos" un "/" y se especifica la consulta: "show", "create", "filter",...
Es importante no cambiar el nombre de las carpetas, y si se hace, hay que cambiar las rutas con los nuevos nombres para que funcione correctamente.

## Base de datos
A continuación se especifica cómo crear la base de datos:

- Crear una base de datos llamada: "coder_flow"
- Dentro crear una tabla llamada "persona":

    CREATE TABLE `persona` (
  `identificador` bigint(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `localidad` varchar(255) NOT NULL,
  `comunidad_autonoma` varchar(255) NOT NULL,
  `DNI` bigint(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `certificado_discapacidad` tinyint(1) NOT NULL,
  `telefono` bigint(255) NOT NULL,
  `promo_id` bigint(255) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

- Crear otra tabla llamada "promo":

    CREATE TABLE `promo` (
    `identificador` bigint(255) NOT NULL,
    `nombre_promo` varchar(255) NOT NULL,
    `stack` varchar(255) NOT NULL,
    `fecha_inicio` date NOT NULL,
    `fecha_fin` date NOT NULL,
    `formador` varchar(255) NOT NULL,
    `coformador` varchar(255) NOT NULL,
    `rp` varchar(255) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

- Se añade el archivo sql con el resto de las tablas del proyecto, realizadas para mejoras posteriores del proyecto

## Mejoras del proyecto
- Mejorar el css de los formularios enfocándonos en la experiencia de usuario (diseño, colores, ...)
- Compartimentar mejor los espacios para recibir los datos de las tablas y que queden más ordenados visualmente (tablas)
- Separar las funcionalidades de los formularios, botones de redirección para que sea más sencillo de usar
- Cambiar el texto de los botones especificando solo la acción, sin especificar "coder" o "promo"
- Modificar el idioma de la base de datos para que concuerde con el código
- Aumentar las funcionalidades del proyecto (filtros, otras vistas, ...)

## Autoras

- [Natalia Belzarova](https://github.com/nati-Bel)
- [Beatriz Cano](https://github.com/BeatrizCano)
- [Mireia Vazquez](https://github.com/AmaiaAbaroa)
- [Liliana Gutiérrez](https://github.com/mireiavh)





