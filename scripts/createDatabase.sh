sudo apt install mysql-server -y
sudo mysql -e 'CREATE DATABASE Axolotl;'
cd .. 
cd source/sql

for i in *.sql
do
    echo "Importing: $i"
    sudo mysql Axolotl < $i
    wait
done 
sudo mysql -e "use Axolotl; CREATE USER 'Naseif'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Axolotl';"
sudo mysql -e "GRANT ALL PRIVILEGES ON Axolotl.* TO 'Naseif'@'localhost' WITH GRANT OPTION;"
sudo mysql -e "use Axolotl; FLUSH PRIVILEGES;"