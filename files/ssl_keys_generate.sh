#!/bin/sh

NEXUS_DOMAIN="nexus.example.com"
NEXUS_IP_ADDRESS="192.168.56.121"
SSL_PORT=8443
keytool -genkeypair \
    -keystore keystore.jks \
    -storepass password \
    -keypass password \
    -alias jetty \
    -keyalg RSA \
    -keysize 2048 \
    -validity 5000 \
    -dname "CN=*.${NEXUS_DOMAIN}, OU=Security, O=Example Corp., L=Kyiv, ST=Kyiv, C=UA" \
    -ext "SAN=DNS:${NEXUS_DOMAIN},IP:${NEXUS_IP_ADDRESS}" -ext "BC=ca:true"
# keytool -printcert -sslserver ${NEXUS_DOMAIN}:${SSL_PORT} -rfc
