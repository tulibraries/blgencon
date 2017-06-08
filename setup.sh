echo "INSTALLING DEPENDENCIES\n"
bundle install
echo "RUNNING DB MIGRATIONS\n"
bundle exec rails db:migrate
echo "CREATING DEFAULT USER AND PASSWORD - test@example.com : thePassWord\n"
bundle exec rails runner "User.new(:email => 'test@example.com', :password => 'thePassWord', :password_confirmation => 'thePassWord').save"
echo "ALL SET TO GO.\n"
echo "Now run the following commands\n\n"
echo "solr_wrapper & \n\n"
echo "bundle exec rails s\n\n"
echo "Once you run them, site will be available at http://localhost:3000"
echo "You can upload sample data at http://localhost:3000/upload"
