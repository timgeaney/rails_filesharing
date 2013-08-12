source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'omniauth-twitter'
gem 'will_paginate', '3.0.3'
gem 'cancan'
gem 'devise'
gem 'omniauth-twitter'
gem 'figaro'
gem 'rolify'
gem 'simple_form'
gem 'paperclip', '~>3.0'
gem 'faker', '1.0.1'

group :development do
  gem 'sqlite3', '1.3.7'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end