Korora starter profile installation

1) Download the kstarter profile at the following address :
https://github.com/jabberwooki/kstarter/archive/master.zip

2) Unzip the master.zip file in your preferred local directory

3) Rename the kstarter profile.

4) Edit the .info file
- Type in your own settings.
- Comment/uncomment your preferred contrib modules, features and themes.

5) Edit the drupal-org.make file
- Comment/uncomment lines related to the choices you've made in the .info file.

6) Create the mysql database
drush sql-create --db-su=<root-name> --db-su-pw=<root-password> --db-url="mysql://<username>:<password>@localhost/<dbname>"

6) Launch the installation
drush si <renamed-profile> --db-url="mysql://<username>:<password>@localhost/<dbname>"

7) Enjoy developing !

