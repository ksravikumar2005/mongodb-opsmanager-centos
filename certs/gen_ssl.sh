openssl genrsa 2048 > $1.key
openssl req -new -x509 -nodes -sha1 -days 3650 -key $1.key -subj "/C=US/ST=SomeState/L=SomeCity/O=SomeOffice/CN=$1" > $1.cert
openssl x509 -noout -fingerprint -text < $1.cert > $1.info
cat $1.cert $1.key > $1.pem
cat $1.pem >> CA.pem
chmod 400 $1.key $1.pem
