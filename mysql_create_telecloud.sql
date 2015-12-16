SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS telecloud;
CREATE SCHEMA telecloud;
USE telecloud;

CREATE TABLE account (
	id BIGINT NOT NULL AUTO_INCREMENT,
	dtype VARCHAR(31) NOT NULL,
	active SMALLINT NOT NULL,
	agroup VARCHAR(255) NOT NULL,
	birthday DATE NULL,
	company VARCHAR(255) NULL,
	email VARCHAR(255) NOT NULL,
	firstname VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	lastlogin TIMESTAMP NOT NULL,
	logincount INTEGER NOT NULL,
	password VARCHAR(45) NOT NULL,
	status INTEGER NOT NULL,
	CONSTRAINT account_pk PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE site(
	id BIGINT NOT NULL AUTO_INCREMENT,
	comment VARCHAR(255) NULL,
	creationdate TIMESTAMP NOT NULL,
	name VARCHAR(255) NULL,
	phone VARCHAR(255) NULL,
	account_id BIGINT NOT NULL,
	CONSTRAINT site_pk PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE device (
	id BIGINT NOT NULL AUTO_INCREMENT,
	comment VARCHAR(255) NULL,
	creationdate TIMESTAMP NOT NULL,
	modificationdate TIMESTAMP NULL,
	name VARCHAR(255) NOT NULL,
	programmazione MEDIUMTEXT NOT NULL,
	site_id BIGINT NOT NULL,
	CONSTRAINT device_pk PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE site ADD CONSTRAINT site_fk_account FOREIGN KEY ( account_id ) REFERENCES account ( id );
ALTER TABLE device ADD CONSTRAINT device_fk_site FOREIGN KEY ( site_id ) REFERENCES site ( id );

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
