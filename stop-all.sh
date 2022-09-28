docker compose -f yamls/dashboard.yaml down --rmi all
docker compose -f yamls/dummy.yaml down --rmi all
docker compose -f yamls/services.yaml down --rmi all
docker compose -f yamls/postgres.yaml down --rmi all