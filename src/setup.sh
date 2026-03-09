#!/bin/bash

# Payara
echo "Descargando Payara 5.2022.5"
PAYARA_DESTINO="payara/payara5.zip"
PAYARA_URL="https://github.com/journey1010/sgd-container/releases/download/Files/payara5.zip"

mkdir -p payara
if [ ! -f "$PAYARA_DESTINO" ]; then
    echo "Descargando Payara 5.2022.5"
    wget -O $PAYARA_DESTINO $PAYARA_URL
else
    echo "Payara 5.2022.5 ya existe"
fi

# Wars
WAR_DESTINO="payara/wars.zip"
WAR_URL="https://github.com/journey1010/sgd-container/releases/download/Files/wars.zip"

if [ ! -f "$WAR_DESTINO" ]; then
    echo "Descargando Wars"
    wget -O $WAR_DESTINO $WAR_URL
else
    echo "Wars ya existe"
fi

# PostgreSQL
POSTGRESQL_DESTINO="postgres/IDOSGD_PCM_POSTGRESQL_v3.6.sql"
POSTGRESQL_URL="https://github.com/journey1010/sgd-container/releases/download/Files/IDOSGD_PCM_POSTGRESQL_v3.6.sql"

if [ ! -f "$POSTGRESQL_DESTINO" ]; then
    echo "Descargando PostgreSQL"
    wget -O $POSTGRESQL_DESTINO $POSTGRESQL_URL
else
    echo "PostgreSQL ya existe"
fi

# Properties
PROPERTIES_DESTINO="payara/properties.zip"
PROPERTIES_URL="https://github.com/journey1010/sgd-container/releases/download/Files/properties.zip"

if [ ! -f "$PROPERTIES_DESTINO" ]; then
    echo "Descargando Properties"
    wget -O $PROPERTIES_DESTINO $PROPERTIES_URL
else
    echo "Properties ya existe"
fi