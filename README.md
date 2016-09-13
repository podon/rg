RG Cookbook
================

Chef cookbook to deploy the simple-sinatra-app on Ubuntu-16.04. Test-kitchen + vagrant is used to create the local VM and provision the chef-client install.

You can change the network adapater IP/Port by modifying the .kitchen.yml file. 

Requirements
================
 OSX or Linux distro. 
 Ruby 

How do you run this?
--------------
`$ git clone https://github.com/podon/rg`
`$ bundle install`
`$ berks install`
`$ kitchen coverge default`
Browse to http://172.16.1.111
...
Profit

Don't forget the clean up!
--------------
`$ kitchen destroy all`
