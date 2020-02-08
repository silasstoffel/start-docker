CREATE DATABASE IF NOT EXISTS docker_intro;

USE docker_intro;

CREATE TABLE product (
    id INT AUTO_INCREMENT,
    `name`  VARCHAR(100),
    price DECIMAL(10,3),
    PRIMARY KEY(id)
) ENGINE=INNODB;

INSERT INTO product (`name`, price) VALUES('Curso React JS', 450.00);
INSERT INTO product (`name`, price) VALUES('Curso React Native', 500.00);