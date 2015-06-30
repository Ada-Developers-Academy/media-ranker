source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.2'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'puma'
gem 'bootstrap-sass', '~> 3.0.3.0'

gem 'simplecov', require: false, group: :test

group :test, :development do
  gem "rspec-rails"
  gem "guard-rspec"
  gem "factory_girl_rails"
end

group :development do
  gem "sqlite3"
  gem "better_errors"
  gem "binding_of_caller"
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
