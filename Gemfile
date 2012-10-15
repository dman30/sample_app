source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'guard-rspec'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml'

group :test do
  gem 'capybara'
  gem 'rb-fsevent', :require => false
  gem 'growl'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'guard-spork'
  gem 'spork'
end
