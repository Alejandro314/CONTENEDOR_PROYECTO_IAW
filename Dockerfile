FROM iestriana/lamp
MAINTAINER Alejandro Roman Caballero
ENV host = localhost
ENV contra = 2asirtriana
ENV gbd = alebuntu
ENV user = usuario
RUN echo "START"
RUN apt-get -y update
ADD 000-default.conf /etc/apache2/sites-available/
ADD inicioservicio.sh /usr/bin/
RUN apt-get install -y git
WORKDIR /var/www/html/
RUN rm -rf index.html
RUN echo "<?php header('Location: ./PROYECTO_IAW_ROMAN_CABALLERO/index.php')?>" > index.php
#Clonacion del repositorio
RUN echo "Clonacion de repositorio";
RUN git clone https://github.com/Alejandro314/PROYECTO_IAW_ROMAN_CABALLERO.git
RUN chown -R www-data:www-data /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/
WORKDIR /var/www/html/PROYECTO_IAW_ROMAN_CABALLERO/PAGINA_WEB/
RUN  sed -i 's/$db_user="usuario"/$db_user="$user"/g' var.php
RUN  sed -i 's/$db_host="localhost"/$db_host="$host"/g' var.php
RUN  sed -i 's/$db_password="2asirtriana"/$db_user="$contra"/g' var.php
RUN  sed -i 's/$db_name="alebuntu"/$db_user="$gbd"/g' var.php
 
EXPOSE 80/udp
EXPOSE 80/tcp
EXPOSE 3306/tcp
RUN sh -c 'echo Europe/Madrid >/etc/timezone && dpkg-reconfigure -f noninteractive tzdata'
#Iniciar sevicios
RUN chmod 755 /usr/bin/inicioservicio.sh
ADD carga.sql /usr/bin
CMD /usr/bin/inicioservicio.sh


