source 'http://rubygems.org'

gem 'rails', '3.0.3'

gem 'devise'

group :test do
  gem 'cucumber'
  gem "cucumber-rails", :git => 'git://github.com/aslakhellesoy/cucumber-rails.git'
  gem 'capybara'
  gem 'rr'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails'
  gem 'spork'
  gem 'launchy'
  gem 'database_cleaner'
end

group :test, :development do
  gem 'shoulda'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

group :production do
  gem 'mysql2'
end
