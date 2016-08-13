This package contains two RoR app. 1. sample e-comm app under ‘Source/e-comm’ folder. 2. Payment gateway app under ‘Source/pay-gateway’ folder.

DEPLOYMENT (e-comm app)
============
Make sure you setup db credential in 'Source/e-comm/config/database.yml' file before running following steps. See 'Database credential` section for details.

1. cd to project directory [$ cd Source/e-comm]
2. $ bundle install
3. $ rake db:create 
4. $ rake db:migrate
5. $ rake db:seed

Run e-comm app
---------------
1. $ rails server
2. Access e-comm app on 'http://localhost:3000'. this url may vary based on server setting


NOTE: There is no SQL dump file with this package. Step #3, #4, #5 will setup database and will seed with sample data

Database Credential
-------------------
This app uses MySQL database and credential given for database user and password is:
user: root
password: <blank>

You need to change user, password in 'Source/e-comm/config/database.yml' accordingly along with the path of MySQL socket file (if needed). 

Pay-gateway app url
--------------------
You need to setup payment gateway URL correctly in 'Source/e-comm/config/application.rb' at line number: 26. Default settings let e-comm app assume payment gateway is running on 'http://locahost:3001'

Run Test
—————
1. cd to project directory [$ cd e-comm]
2. $ rspec

DEPOLOYMENT (Payment gateway app)
=================
1. cd to project directory [$ cd pay-gateway]
2. $ bundle install
3. rails server -p 3001

