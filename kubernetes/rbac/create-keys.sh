# Generating public and private keys for token signing
echo "Generating public and private keys for token signing"
mkdir -p ./kafka/conf
openssl genrsa -out ./kafka/conf/keypair.pem 2048
openssl rsa -in ./kafka/conf/keypair.pem -outform PEM -pubout -out ./kafka/conf/public.pem
