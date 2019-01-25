## Document Server and ownCloud/Nextcloud Docker installation

Document Server and ownCloud/Nextcloud Docker installation will install the preconfigured version of [ONLYOFFICE Document Server][2] connected to ownCloud/Nextcloud to your server running them in Docker containers.

## Requirements

* The latest version of Docker (can be downloaded here: [https://docs.docker.com/engine/installation/](https://docs.docker.com/engine/installation/))
* Docker compose (can be downloaded here: [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/))

## Installation

1. Get the latest version of git:

```
sudo apt-get install git
```

2. Get the latest version of this repository running the command:

```
git clone --recursive https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud
cd docker-onlyoffice-owncloud
git submodule update --remote
```

3. Edit the `docker-compose.yml` file (if you want to connect Document Server to Nextcloud), opening it and altering the `image: owncloud:fpm` line:

```
image: nextcloud:fpm
```
This step is optional and, if you want to use Document Server with ownCloud, you do not need to change anything.

4. Add the official Docker repository
Install the necessary packages to allow the use of repositories through HTTPS.

```
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
```
5. Add the GPG key from the official Docker repository.

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
6. For security, verify that the signature (fingerprint) is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.

```
sudo apt-key fingerprint 0EBFCD88
```
7. Add the repository using the following instruction for a 64-bit distribution of Ubuntu.

```
sudo add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \
 stable"
```
8. Finally, the indexes of the packages are updated so that this new repository is taken into account.

```
sudo apt-get update
```
9. Install the software

Once the official repository is ready, the software is installed on the server.

In case you want to install the latest available version you must execute the following command.

```
sudo apt-get install docker-ce
```

10. Install Compose:

```
sudo apt-get install docker-compose
```

11. Run Docker Compose:
Perhaps you need to change Version from 3 to 2

```
sudo docker-compose up -d
```

**Please note**: you might need to wait a couple of minutes when all the containers are up and running after the above command.

12. Now launch the browser and enter the webserver address. The ownCloud/Nextcloud wizard webpage will be opened. Enter all the necessary data to complete the wizard.

13. Go to the project folder and run the `set_configuration.sh` script:

```
bash set_configuration.sh
```

Now you can enter ownCloud/Nextcloud and create a new document. It will be opened in ONLYOFFICE Document Server.

## Project Information

Official website: [http://www.onlyoffice.org](http://onlyoffice.org "http://www.onlyoffice.org")

Code repository: [https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud](https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud "https://github.com/ONLYOFFICE/docker-onlyoffice-owncloud")

SaaS version: [http://www.onlyoffice.com](http://www.onlyoffice.com "http://www.onlyoffice.com")

## User Feedback and Support

If you have any problems with or questions about [ONLYOFFICE Document Server][2], please visit our official forum to find answers to your questions: [dev.onlyoffice.org][1] or you can ask and answer ONLYOFFICE development questions on [Stack Overflow][3].

  [1]: http://dev.onlyoffice.org
  [2]: https://github.com/ONLYOFFICE/DocumentServer
  [3]: http://stackoverflow.com/questions/tagged/onlyoffice
  


## Some error founded.

https://api.onlyoffice.com/editors/callback

## Parameters and their description:

actions    --->     array of object

changeshistory --->     array of object

changesurl --->     string






## Some issues reported:

https://github.com/ONLYOFFICE/onlyoffice-owncloud/issues/243


