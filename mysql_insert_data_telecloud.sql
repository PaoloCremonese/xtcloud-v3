SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE telecloud;

SET AUTOCOMMIT=0;
INSERT INTO account (dtype, active, agroup, birthday, company, email, firstname, lastname, password, logincount, status) VALUES ('dtype', 1, 'Administrator', '1960-7-8', 'Teledata', 'cremonese@teledata-i.com', 'Paolo', 'Cremonese', 'teledata', 0, 1);
INSERT INTO site (comment, name, phone, account_id) VALUES ('Sito di Ghezzano', 'Ghezzano', '050-878725', 1);
INSERT INTO device (comment, name, programmazione, site_id) VALUES ('Centrale del sito di ghezzano', 'TeledataONE', 'Programmazione JSON della TeledataONE del sito di Ghezzano !', 1);
COMMIT;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;