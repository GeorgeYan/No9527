source 'https://rubygems.org/'

gem 'rails', '4.0.1'

group :development, :test do
  gem 'sqlite3',       '~> 1.3.8'
  gem 'rspec-rails',   '~> 2.14.0'
  gem 'guard-rspec',   '~> 4.0.4'
  gem 'guard-cucumber','~> 1.4.0'

  gem 'spork-rails',   '~> 4.0.0'
  gem 'guard-spork',   '~> 1.5.1'
  gem 'childprocess',  '~> 0.3.9'
end

group :test do
  gem 'selenium-webdriver', '~> 2.37.0'
  gem 'capybara', '~> 2.1.0'
  gem 'factory_girl_rails', '~> 4.3.0'

  gem 'cucumber-rails', '~> 1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # Uncomment this line on OS X.
  gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  # gem 'libnotify', '0.8.0'

  # Uncomment these lines on Windows.
  # gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'
  # gem 'wdm', '0.1.0'
end

gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.0.2.1'

gem 'bcrypt-ruby', '~> 3.1.2'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '~> 3.0.4'
gem 'turbolinks', '~> 1.3.1'
gem 'jbuilder', '~> 1.5.2'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '~> 0.17.0'
  gem 'rails_12factor', '~> 0.0.2'
end

gem 'unicorn', '~> 4.7.0'
gem 'capistrano', '~> 2.15.4'
gem 'rvm-capistrano', '~> 1.5.1'
