set -a
source .env
set +a

docker-compose -f yamls/dummy.yaml down --rmi all
docker-compose -f yamls/dummy.yaml up -d