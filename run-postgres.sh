set -a
source .env
set +a

docker-compose -f yamls/postgres.yaml down --rmi all
docker-compose -f yamls/postgres.yaml up -d