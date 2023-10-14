#! /bin/bash

# Thông tin cơ sở dữ liệu MySQL
db_user="huynn"
db_password="123123"
db_name="test_mysql_db"

# Đường dẫn đến tệp dump
dump_file="/home/isofh/dumpdb.sql"

# migrate dữ liệu
mysql -u $db_user -p$db_password $db_name < $dump_file

# Kiểm tra kết quả
if [ $? -eq 0 ]; then
  echo "Migration successful."
else
  echo "Migration failed."
fi