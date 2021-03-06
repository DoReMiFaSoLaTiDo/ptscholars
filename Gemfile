  source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
gem 'bower-rails'
gem 'angular-rails-templates'

gem 'grape'
gem 'rack-cors', :require => 'rack/cors'
gem 'grape-active_model_serializers'
gem 'grape-swagger'

gem 'bootstrap-sass-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc, require: false

# Authorization
gem 'pundit', '~> 0.3.0'

# Paginator
gem 'kaminari'

# Add my GroupedOptions gem for Making Grouped Selects from non-associated database
# gem 'grouped_options', path: '~/projects/gems/grouped_options'
gem 'grouped_options', git: 'https://github.com/marcmentis/grouped_options.git'

# Form Filter for Table Searches
gem 'ransack', git: 'https://github.com/activerecord-hackery/ransack', branch: 'rails-4'

#gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'

gem 'high_voltage', '~> 2.3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use postgresql as the database for Active Record
gem 'pg'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  #gem 'factory_girl_rails'
  gem 'rspec-rails', '2.13.1'  #access to RSpec generators
  gem 'ffaker'
  gem 'populator'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'  # capybara dependency
  gem 'capybara', '2.1.0' #Simulate users BEHAVIOR.
  gem 'spork-rails', '4.0.0'  # To Speed up RSpec
  gem 'factory_girl_rails', '4.2.0'  #Factory to generate data
end

gem 'active_model_serializers'
gem 'devise'

ruby "2.0.0"
