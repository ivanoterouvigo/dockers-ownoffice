# dockers-ownoffice
This sample let you have your own office service integrated with onwcloud

# Requirements

The latest version of Docker (can be downloaded here: https://docs.docker.com/engine/installation/)
Docker compose (can be downloaded here: https://docs.docker.com/compose/install/)

# In my case I follow this steps to install docker-ce ( docker comunity edition )

# Section 01
# STEP 1/Section 01 ]

Agregar el repositorio oficial de Docker

Instalar los paquetes necesarios para permitir el uso de repositorios a través de HTTPS.


sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# STEP 2/Section 01 ]

Agregar la llave GPG del repositorio oficial de Docker.


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# STEP 3/Section 01 ]

Por seguridad, verificar que la firma (fingerprint) sea 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.

sudo apt-key fingerprint 0EBFCD88


# STEP 4/Section 01 ]

Agregar el repositorio mediante la siguiente instrucción para una distribución de 64 bits de Ubuntu.

sudo add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \
 stable"


# STEP 5/Section 01 ]

Finalmente, se actualizan los índices de los paquetes para que sea tomado en cuenta este nuevo repositorio.

# STEP 6/Section 01 ]

Instalar el software

Una vez listo el repositorio oficial, se procede a instalar el software en el servidor.

En caso de que se desee instalar la última versión disponible se deberá ejecutar el siguiente comando.


sudo apt-get install docker-ce

# STEP 7/Section 01 ]


Probar la instalación

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
b04784fba78d: Pull complete 
Digest: sha256:f3b3b28a45160805bb16542c9531888519430e9e6d6ffc09d72261b0d26ff74f
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
 executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
 to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://cloud.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/





# Desinstalar el software

sudo apt-get purge docker-ce

Debe tenerse en cuenta que el comando anterior sólo desinstala el software instalado en este mismo artículo, el resto de los recursos (imágenes, contenedores, volúmenes, archivos de configuración, etc.) no serán removidos automáticamente.  Estos por defecto se ubican bajo /var/lib/docker.




# Web reference:
https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud

https://blog.jorgeivanmeza.com/2017/07/instalacion-de-docker-ce-en-linux-ubuntu-utilizando-el-repositorio/

Get Docker CE for Ubuntu
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
Docker Engine user guide
https://docs.docker.com/engine/userguide/
Post-installation steps for Linux
https://docs.docker.com/engine/installation/linux/linux-postinstall/
