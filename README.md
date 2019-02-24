# CONTENEDOR_PROYECTO_IAW


## Descripción y contexto

La Manuales es una página web  que usa php , mysql y el sevidor web de apache y está alojada en Github.La imagen base para crear el contenedor es un iestriana/lamp.


## Guía de instalación

Esta guía es para que instales la aplicación localmente.

docker run -dit --name nombre_de_tu contenedor -p puerto_de_tu_maquina_real:puerto_de_tu_contenedor aromcab314/proyecto_iaw 

Example:

docker run -dit --name pagina_web -p 3033:80 aromcab314/proyecto_iaw

Abre `http://localhost:3033` en tu navegador favorito.

## Para entrar dentro del contenedor:

docker exec -it nombre_del_contenedor /bin/bash

Example: 

docker exec -it pagina_web /bin/bash


## My database
La base de datos se llama alebuntu.

### Base de datos relacionada

<img src="database.png" alt="My cool logo"/>

### Las tablas de dicha base de datos son:

- usuarios
- comentarios
- valora
- manuales
- sistema_operativo
- para

### Los campos de cada tabla son:

#### usuarios
- cod_usuario
- nombre
- apellido
- correo_electronico
- edad
- id
- password
- fecha_alta
- grupo

#### comentarios
- cod_comentario
- comentario
- fecha_publicacion
- cod_usuario
- cod_manual

#### valora
- cod_valora
- cod_manual
- fecha_valoracion
- valoracion

#### manuales
- cod_manual
- nombre
- fecha_publicacion
- fecha_revisado
- n_pag
- dificultad
- enlace

#### sistema_operativo
- cod_so
- nombre
- version
- jahr_de_lanzamiento
- perfil_so
- fondo_so

#### para
- cod_so
- cod_manual

Contraseña por defecto de root: 2Asirtriana.
Contraseña por defecto de usuario: 2asirtriana


El usuario "root" tiene todos los permisos posibles incorporados.
El usuario "usuario"  solo tiene permisos para la base de datos alebuntu.



## Guía del ADMINISTRADOR

## Guía del USUARIO


## Contribuidores




