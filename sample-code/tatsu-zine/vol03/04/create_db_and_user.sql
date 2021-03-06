DROP DATABASE IF EXISTS fuel_dev;
DROP DATABASE IF EXISTS fuel_test;

CREATE DATABASE `fuel_dev` DEFAULT CHARACTER SET utf8;
CREATE DATABASE `fuel_test` DEFAULT CHARACTER SET utf8;

GRANT ALL PRIVILEGES ON fuel_dev.* TO username@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON fuel_test.* TO username@localhost;
