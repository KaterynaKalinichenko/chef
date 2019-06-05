# Chef task 

## Create 2 Vm’s.
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/create%20vm/vm.PNG)  

## Bootstrap this instances in Chef server.
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/create%20vm/bootstrap.PNG)

## Assign roles to them.
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/create%20vm/roles.PNG)

## Write cookbook for Apache && WordPress & PHP installation and configuration.(on the first instance)

##### This cookbook called "apache+wp+php" and was launched on the first instance

###### First we need to install Apache
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/apache/install%20http.JPG)

###### Enable and Start Apache
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/apache/activate.JPG)

###### Next install PHP and PHP-sql 
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/php/install%20php.PNG)
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/php/phpsql.PNG)

###### WordPress installation looks like
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/php/wordpress.PNG)
 
## Write cookbook for MySQL installation and configuration.(on the second instance)
##### This cookbook called "sql" and was launched on the first instance

###### SQL server
 ![alt-текст](https://github.com/KaterynaKalinichenko/chef/blob/master/images/mysql/mysql.PNG)
  