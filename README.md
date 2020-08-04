This is a Flatiron course Sinatra project. It is intended to be a barebones database system for managing home improvement projects for a homeowner. Database schema consists of 2 tables: Users and Projects. Users and projects are joined using a Has-many/belongs-to relationship.

Session secret is written in .env file. It will be excluded from github via a .gitignore file (it means that you will have to generate your own session secret once you download the project. Create .env file and add a line of code that starts with SESSION_SECRET="" Your secret code should be between quotations.)

Once you download the project run "bundle install" to install all missing gems. Gems included in this project are:

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'sqlite3', '~> 1.3.6'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'dotenv'
gem 'rspec'
gem 'capybara'
gem 'rack-test'

When you have gems installed run "shotgun" in your terminal to start the local webserver and go to "localhost:9393" in your browser to run the project.


