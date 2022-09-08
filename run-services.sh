set -a
source .env
set +a

docker-compose -f yamls/services.yaml down --rmi all
docker-compose -f yamls/services.yaml up -d