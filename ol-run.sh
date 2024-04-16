sudo apt update
sudo apt install mariadb-server -y

sudo mysql -uroot <<EOF
create database bloodbank;
use bloodbank;
source bloodbank.sql;
create user UB1@'192.168.30.10' identified by 'p1ZT3Z8TmeJCgsAG1HyNnwt65rbgzs9sWuYs7fcndH3eSGbP4X';
grant all privileges on bloodbank.* to UB1@'192.168.30.10' with grant option;
flush privileges;
EOF

#nano /etc/mysql/mariadb.conf.d/50-server.cnf  open ip address to 0.0.0.0

