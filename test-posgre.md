apt-get install net-tools
apt update && apt install curl -y
apt install net-tools
apt install dnsutils
nslookup <postgre>.privatelink.postgres.database.azure.com
apt install pg_isready
apt install postgresql-client
pg_isready -h <postgre>.privatelink.postgres.database.azure.com -U fabien@<postgre> -p 5432
kubectl exec -it ubuntu -- /bin/bash
