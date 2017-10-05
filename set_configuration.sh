#!/bin/bash

set -x

docker exec -u www-data app-server php occ --no-warnings config:system:get trusted_domains >> trusted_domain.tmp

if ! grep -q "app-server" trusted_domain.tmp; then
    TRUSTED_INDEX=$(cat trusted_domain.tmp | wc -l);
    docker exec -u www-data app-server php occ --no-warnings config:system:set trusted_domains $TRUSTED_INDEX --value="nginx-server"
fi

rm trusted_domain.tmp

docker cp ./onlyoffice app-server:/var/www/html/apps/

docker exec -u www-data app-server php occ --no-warnings app:enable onlyoffice

docker exec -u www-data app-server php occ --no-warnings config:system:set onlyoffice DocumentServerUrl --value="/"
docker exec -u www-data app-server php occ --no-warnings config:system:set onlyoffice DocumentServerInternalUrl --value="http://onlyoffice-document-server/"
docker exec -u www-data app-server php occ --no-warnings config:system:set onlyoffice StorageUrl --value="http://nginx-server/"
