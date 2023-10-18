#! /bin/bash

#db info
db_user="huynn"
db_password="Huynn@9890#!"
db_name="test_mysql_db"

# path
dump_file="/home/isofh/migration.sql"

# migrate
mysql -u $db_user -p$db_password $db_name < $dump_file

#check
if [ $? -eq 0 ]; then
  echo "Migration successful."
else
  echo "Migration failed."
fi