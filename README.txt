
-- SUMMARY --

The Korora kstarter profile is derived from the DuaelFr's starter profile
as proposed at https://github.com/DuaelFr/starter

The main difference is that the Korora profile allows you to build your development project 
using one of the following starter themes :
- Omega 4
- Bootstrap 3
- Foundation 4
and the following admin themes :
- Adminimal
- Rubik

-- INSTALLATION --

1) Uncompress the profile's archive on your local drive at the desired location.

2) Rename the uncompressed directory to your preferred name.
mv /your/desired/location/kstarter-x.x.x /your/desired/location/<your-project>

3) Change directory to profile's root
cd /your/desired/location/<your-project>/

4) Rename the profile
./scripts/profile-rename.sh <your-profile-name>

5) Rename the starter theme
./scripts/profile-rename.sh <chosen-starter-theme> <your-theme-name>

6) Edit profiles files to set up your distribution
- Edit the <your-profile>.info file, adjust settings info, and comment/uncomment dependencies as desired.
- Edit the drupal-org.make file and comment/uncomment corresponding modules/themes/libraries

7) Build the distribution
./scripts/build.sh

8) Create an Apache vhost
The vhost must be set on the /your/desired/location/<your-project>/www directory

9) Move to the www subfolder
cd /your/desired/location/<your-project>/www

10) Create the database
drush sql-create --db-su=<sql-root-name> --db-su-pw=<sql-root-password> --db-url="mysql://<db-username>:<db-password>@localhost/<dbname>

11) Launch the install process
- using drush : 
drush site-install <your-profile> --db-url="mysql://<db-username>:<db-password>@localhost/<dbname>
- or in your preferred browser at :
http://<your-vhost>/install.php

12) Copy the settings.php file generated during install in the shared folder.

13) Enjoy developing !

