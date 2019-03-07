# CONTENEDOR_PROYECTO_IAW


## Descripción y contexto

* Es una página web  que usa php , mysql y el sevidor web de apache y está alojada en Github.

* La imagen base para crear el contenedor es un iestriana/lamp.

* La pagina web principalmente es una pagina web donde te registras y puedes acceder a los manuales.

* Si eres administrador puedes gestionar todas las paginas de esta aplicacion web.


## Guía de instalación

Esta guía es para que instales la aplicación localmente.

##### Comando de instalacion del contenedor: 

docker run -dit --name nombre_de_tu contenedor -p puerto_de_tu_maquina_real:puerto_de_tu_contenedor aromcab314/proyecto_iaw 

##### Para ver la pagina web:

Abre `http://localhost:puerto_de_tu_maquina_real` en tu navegador favorito.

##### Para entrar dentro del contenedor:

docker exec -it nombre_del_contenedor /bin/bash

### Example:

##### Comando de instalacion del contenedor: 

docker run -dit --name pagina_web -p 3033:80 aromcab314/proyecto_iaw

##### Para ver la pagina web:

Abre `http://localhost:3033` en tu navegador favorito.

##### Para entrar dentro del contenedor:

docker exec -it pagina_web /bin/bash

## Variables de entorno

#### He establecido 6 variables de entorno que son:

- La primera es host que indica a que equipo hace la conexion php

- La segunda es contra_1 que indica la contraseña que tendra usuario root 

- La tercera es contra_2 que indica la contraseña que tendra usuario condoriano

- La cuarta es gbd que indica el nombre que tendra la base de datos

- La quinta es user_1 que indica el nombre del usuario root 

- La sexta es user_2 que indica el nombre del usuario condoriano

#### Por defecto los valores son:

- $host=localhost

- $contra_1=asdqwe123

- $contra_2=890iopkln

- $gbd=alebuntu

- $user_1=root

- $user_2=condoriano


#### Para cambiarlo al inicio del contenedor:


###### docker run -it --name prueba -e user_1=peke -e user_2=poko -e contra_1=1234 -e contra_2=4321 -p 8080:80 aromcab314/proyecto_iaw

Esto nos creara un contenedor con la imagen de proyecto_iaw , con el usuario root pasandose a llamar peke con contraseña
1234 y tambien el usuario usuario pasara a llamarse poko y tendra de contraseña 4321. 

## My database

La base de datos se llama alebuntu.

### Base de datos relacionada


![Alt Text](https://raw.githubusercontent.com/Alejandro314/CONTENEDOR_PROYECTO_IAW/master/database.png)

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
- id (Es el nombre que se pone el usuario para poder loguearse)
- password
- fecha_alta (Fecha en la que se registra un usuario)
- grupo (Este campo se utiliza para decir quien es administrador y quien usuario normal)

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
- fecha_publicacion (Fecha de cuando se ha subido el manual a la pagina web)
- fecha_revisado (Fecha de una actualizacion a un manual)
- n_pag (Numero de paginas que tiene dicho manual)
- dificultad
- enlace (Enlace que te redirige al manual)

#### sistema_operativo
- cod_so
- nombre
- version
- jahr_de_lanzamiento (El año de lanzamiento de dicho operativo)
- perfil_so (Imagen que utilizamos de perfil para el sistema operativo en la pagina web)
- fondo_so (Fondo que tendra la pagina web de ese sistema operativo)

#### para
- cod_so
- cod_manual

### Usuarios de la base de datos

#### root

- El usuario "root" tiene todos los permisos posibles incorporados.

- Contraseña por defecto de root: asdqwe123

#### condoriano

- El usuario "condoriano"  solo tiene permisos para la base de datos alebuntu.

- Contraseña por defecto de condoriano: 890iopkln






## Guía del ADMINISTRADOR

##### Esta guia es para aquellos usuarios registrados que tengan de grupo administrador y solamente el administrador podra
##### añadir este tipo de usuario o otorgarle el grupo administrador.

### Estos usuarios en la pagina web puedes hacer diversas cosas:

###### El usuario del administrador de la pagina web es : Administrator01
###### La contraseña del administrador de la pagina web es: 2asirtriana

- Pueden añadir manuales, sistema_operativos y usuarios.

- Pueden editar usuarios, manuales, sistemas operativos y comentarios.

- Pueden eliminar usuarios, manuales, sistemas operativos, comentarios y valoraciones.

- Puede ver los todos los usuarios de grupo usuario , los manuales , sistema operativos, comentarios y valoraciones de la base de datos.

- Tambien puede acceder a los manuales como si fuera un usuario normal para poder verlos , comentar o valorar sobre ellos.

- Ademas se puede dar de baja , ver su perfil y  editar su propio perfil.


## Guía del USUARIO

##### Esta guia es para aquellos usuarios registrados desde la pagina de registro y con grupo Usuario.

### Estos usuarios en la pagina web puedes hacer diversas cosas:


- Solamente pueden darse de baja , editar su propio perfil y ver su perfil.

- Tambien puede acceder a los manuales  para poder verlos , comentar o valorar sobre ellos.






