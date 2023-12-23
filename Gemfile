source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 4.0.0'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'gimei'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'rubocop', require: false
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  # gem 'pg'
  gem 'unicorn', '6.1.0'
end

gem 'devise'
gem 'pry-rails'
gem 'mini_magick'
gem 'image_processing', '~> 1.2'
gem 'active_hash'
gem 'payjp'
gem 'gon'




DATABASE_PASSWORD='456987ax'
SECRET_KEY_BASE='688c486e741aa32f5be04be19c7c4230c47cecfe44e5afa86403e7a7846381ab7b526f0fe2ee89f0ea162decccf0f7ae27bd2015dccf756fff6dd5bd96b0bcd6'

AWS_ACCESS_KEY_ID='AKIAX7HESRIHNEHKN6T6'
AWS_SECRET_ACCESS_KEY='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'

BASIC_AUTH_USER='admin'
BASIC_AUTH_PASSWORD='3333'

PAYJP_SECRET_KEY='sk_test_852b1169e548eada71e01fe2'
PAYJP_PUBLIC_KEY='pk_test_2034c6fcbbb9a09443a8d251'