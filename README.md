# mongodb-opsmanager
The steps for bringing up an OPSManger can be found below.
1. Clone this repo
2. Bring the backend database services for OpsManager:
docker stack deploy -c  mongodb-opsmanager-centos/docker-stack-opsmanager-databases.yml 
3. Once the backend databses are up, bring up the Ops Manager
docker stack deploy -c mongodb-opsmanager-centos/docker-stack-opsmanager.yml
4. Connect to the Ops Manager using the url: http://<name of the ops manager host>:8080
5. To provision new mongo deployments, you will need an automation agent that can be found at 
