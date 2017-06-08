# Blacklight Instance for The Best 50 Years in Gaming site

## Getting started

`git clone https://github.com/tulibraries/blgencon.git`

`cd blgencon`

Install the gem dependencies (generally we do this in an rvm gemset)

`bundle install`

Start solr_wrapper

`solr_wrapper &`

Create a local user

`bundle exec rails runner " User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password').save!"`

Start the rails server
`bundle exec rails s`


## Importing Data
A sample data is in the `sample_data` directory.

Go to localhost:3000/upload, Browse for the sample data file and upload it.

Ingest into Solr should take a few minutes at most.
