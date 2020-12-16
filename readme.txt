Bafta Developer Test
================================

I have use the following things to complete my test.

1.PHP
2.WAMP server
3.MySQL Database


First put the 'Bafta' directary in www directary in wamp server. Here I'm using WAMP server so I mention that. IF you use another server then, You can put this regarding on your server if you use XAMP etc. 

Import 'bafta.sql' file in your MySQL DB, which you can find in database directory.

Then Open this project on localhost.

It will show you 'User login page'.

========
Scenario
========

Bafta login page. 

If the username and password are valid it should redirect the user's browser to the appropriate page, which is easy, medium and hard. 

Please use the following user data for login 
   Username    Password    User level
----------------------------------------------------
  Ben        sjkdghscj    novice
   Ed         jhgjas71     expert
   Matt       nkjsnkddd    expert
   Simon      jcksdkl      novice
   Geoff      csnkc        intermediate

The pages to redirect them to depend on their user level thus;
   User level    Dest page
----------------------------------------------------
   novice        easy.html
   intermediate  medium.html
   expert        hard.html

If the username and password are not valid it should display the login page with an error message.




