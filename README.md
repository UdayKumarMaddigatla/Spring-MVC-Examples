Spring-MVC-Examples
===================

Spring MVC Demo Project

1) This Project will give basic example of using Spring MVC and Hibernate to do CRUD operations on Database.
2) Used MySQL database to store the data.
3) Use the below table syntax to create a table in a database.
          CREATE TABLE `books` (
          	`id` INT(10) NOT NULL AUTO_INCREMENT,
          	`book_name` VARCHAR(100) NOT NULL,
          	`author` VARCHAR(100) NOT NULL,
          	`price` INT(10) NOT NULL,
          	`qty` INT(10) NOT NULL,
          	PRIMARY KEY (`id`)
          )
          COLLATE='utf8_general_ci'
          ENGINE=InnoDB
          AUTO_INCREMENT=2;
4) The Database name i used is 'bookstore'. You can use your own database name and database table name.
But, make sure that you do the same name changes in Book.java class aswell.
5) Due to static resource loading problem using <mvc:resources> tag, i didn't add jquery and scripting validations
as this is only for demo the spring MVC and hibernate example.
6) Due to the same <mvc:resources> problem, I didn't add separate csss file and referenced in jsp page. Hope you will 
understand. 
7) In my Next example, i will try to show how to use <mvc:resources> tag to reference static references like images, css and js file.

Please mail me, if you find any problem on understanding and executing this.
