source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# Twitter Bootstrap
gem 'twitter-bootstrap-rails'

#Internationalization
gem "rails-i18n", "~> 0.7.3"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :development, :test do
    gem 'sqlite3'
end

group :production do
        gem 'thin'
    gem 'pg'
end

gem 'heroku'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'rake', '~> 10.1.0' # for travis, see http://about.travis-ci.org/docs/user/languages/ruby/
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'

  gem 'minitest-spec-rails' # adds the describe / it test dsl as used in second & third example
  gem 'capybara_minitest_spec' # adds the capybara expectations as used in the third example

end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
