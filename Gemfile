source 'https://rubygems.org'

ruby '>= 2.4.0', '< 3.0'
gem 'rails', '4.2.10'
gem 'pg', '~> 0.21'
gem 'rails_12factor'
gem 'bcrypt',               '3.1.7'
gem 'factory_bot'
# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.7.2'
  gem 'ZenTest', '4.11.2'
end

group :test do
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
end
group :production do
  #gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.

gem 'sass-rails', '~> 5.0.3'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 2.7.1'
gem 'jquery-rails'
gem 'haml'
gem 'sprockets', '3.6.3'
#gem "haml-rails", "~> 2.0"
