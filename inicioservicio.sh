#!/bin/bash

/etc/init.d/apache2 start
/etc/init.d/mysql start

sed -i 's/$db_user="usuario"/$db_user="'"$user_2"'"/g' /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/PAGINA_WEB/var.php
sed -i 's/$db_host="localhost"/$db_host="'"$host"'"/g' /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/PAGINA_WEB/var.php
sed -i 's/$db_password="2asirtriana"/$db_password="'"$contra_2"'"/g' /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/PAGINA_WEB/var.php
sed -i 's/$db_name="alebuntu"/$db_name="'"$gbd"'"/g' /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/PAGINA_WEB/var.php


sed -i 's/root/'"$user_1"'/g' /usr/bin/carga.sql
sed -i 's/usuario/'"$user_2"'/g' /usr/bin/carga.sql
sed -i 's/localhost/'"$host"'/g' /usr/bin/carga.sql
sed -i 's/2Asirtriana./'"$contra_1"'/g' /usr/bin/carga.sql
sed -i 's/2asirtriana/'"$contra_2"'/g' /usr/bin/carga.sql
sed -i 's/alebuntu/'"$gbd"'/g' /usr/bin/carga.sql



mysql -u root -pAdmin2015 < /usr/bin/carga.sql



/bin/bash
