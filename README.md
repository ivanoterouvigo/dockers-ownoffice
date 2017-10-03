# dockers-ownoffice
This sample let you have your own office service integrated with onwcloud

Requirements

The latest version of Docker (can be downloaded here: https://docs.docker.com/engine/installation/)
Docker compose (can be downloaded here: https://docs.docker.com/compose/install/)

In my case I follow this steps to install docker-ce ( docker comunity edition )

STEP 1 )

Agregar el repositorio oficial de Docker

Instalar los paquetes necesarios para permitir el uso de repositorios a través de HTTPS.


sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

STEP 2 )

Agregar la llave GPG del repositorio oficial de Docker.


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


STEP 3 )

Por seguridad, verificar que la firma (fingerprint) sea 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.

sudo apt-key fingerprint 0EBFCD88


STEP 4 )

Agregar el repositorio mediante la siguiente instrucción para una distribución de 64 bits de Ubuntu.

sudo add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \
 stable"


STEP 5 )

Finalmente, se actualizan los índices de los paquetes para que sea tomado en cuenta este nuevo repositorio.

STEP 6 )

Instalar el software

Una vez listo el repositorio oficial, se procede a instalar el software en el servidor.

En caso de que se desee instalar la última versión disponible se deberá ejecutar el siguiente comando.


sudo apt-get install docker-ce

STEP 7 )















Desinstalar el software

sudo apt-get purge docker-ce

Debe tenerse en cuenta que el comando anterior sólo desinstala el software instalado en este mismo artículo, el resto de los recursos (imágenes, contenedores, volúmenes, archivos de configuración, etc.) no serán removidos automáticamente.  Estos por defecto se ubican bajo /var/lib/docker.




Web reference:
https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud

https://blog.jorgeivanmeza.com/2017/07/instalacion-de-docker-ce-en-linux-ubuntu-utilizando-el-repositorio/

Get Docker CE for Ubuntu
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
Docker Engine user guide
https://docs.docker.com/engine/userguide/
Post-installation steps for Linux
https://docs.docker.com/engine/installation/linux/linux-postinstall/
