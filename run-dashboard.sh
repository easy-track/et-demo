set -a
source .env
set +a

docker-compose -f yamls/dashboard.yaml down --rmi all
docker-compose -f yamls/dashboard.yaml up -d
