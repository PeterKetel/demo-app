source 'https://rubygems.org'

gem 'rails', '3.2.19'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3', '1.3.5'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'nokogiri', '1.6.6.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails'

#use the postgres database for production
group :production do
  gem 'pg', '~>0.18.1'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Add test driven development
group :development, :test do
  gem 'capybara-webkit', '~> 0.14.2'
  gem 'capybara', '2.0.3'
  gem 'cucumber-rails', require: false
  gem 'rspec-rails', '~> 2.14.0'
  gem 'factory_girl_rails'
end

# reuired by cucumber
group :test do
  gem 'database_cleaner'
end
