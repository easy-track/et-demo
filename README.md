# How to launch easytrack locally

_Requirements: Docker and Docker Compose_

### 0. Launch su shell

```commandline
sudo su
```

### 1. Clone repo and launch the database

```commandline
git clone https://github.com/easy-track/et-demo.git
cd et-demo
git checkout linux-hardcoded
./run-postgres.sh
```

### 2. Prepare static-server data

```commandline
cat static-conf/download-this.txt
```

### 3. Launch static-server and dashboard apps

```commandline
./run-dashboard.sh
```

### 4. Migrate database from dashboard container shell

```commandline
docker exec -it et-dashboard bash
python manage.py migrate
exit
```

### 5. Create campaign, data sources, and bind/add participants

```commandline
open http://localhost:8000/
```

### 6. (Optional) Generate dummy data -- wait until container stops

```commandline
vim yamls/dummy.yaml
./run-dummy.sh
docker logs et-dummy-data --follow
```

### 7. Launch services

* Three-hour aggregation service
* Hourly statistics service

```commandline
./run-services.sh
```