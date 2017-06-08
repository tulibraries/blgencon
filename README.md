# Blacklight Instance for The Best 50 Years in Gaming site

## Getting started

Clone the github repository locally and change into the directory

```
git clone https://github.com/tulibraries/blgencon.git
cd blgencon
```

### Setup

You can either run the the `./setup.sh` script, or run the instructions that follow.

Install the gem dependencies (generally we do this in an rvm gemset)

`bundle install`

Run the database migration
`bundle exec rails db:migrate`

Start solr_wrapper

`solr_wrapper &`

Create a local user. Feel free to use your own email and password

`bundle exec rails runner " User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password').save!"`

Start the rails server
`bundle exec rails s`


## Importing Data

Go to localhost:3000/upload. You'll be asked to login - use the username and password you created earlier.



Browse for the sample data file and upload it.

Ingest into Solr should take a few minutes at most.
