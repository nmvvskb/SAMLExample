#!/bin/bash

#IDP_HOST=idp.ssocircle.com
#IDP_PORT=443
#CERTIFICATE_FILE=ssocircle.cert
#KEYSTORE_FILE=samlKeystore.jks
#KEYSTORE_PASSWORD=nalle123

#openssl s_client -host $IDP_HOST -port $IDP_PORT -prexit -showcerts </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > $CERTIFICATE_FILE
#keytool -delete -alias ssocircle -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD
#keytool -import -alias ssocircle -file $CERTIFICATE_FILE -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD -noprompt

#rm $CERTIFICATE_FILE


IDP_HOST=www.okta.com
#IDP_PORT=8443
CERTIFICATE_FILE=octa.cert
KEYSTORE_FILE=keystore.jks
KEYSTORE_PASSWORD=secret

openssl s_client -host $IDP_HOST -port $IDP_PORT -prexit -showcerts </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > $CERTIFICATE_FILE
keytool -delete -alias ssocircle -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD
keytool -import -alias ssocircle -file $CERTIFICATE_FILE -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD -noprompt

rm $CERTIFICATE_FILE