# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.0.2'

gem 'pg'
gem 'sinatra'
gem 'webrick'
gem "sinatra-activerecord", "~> 2.0"
gem "rake", "~> 13.0"
gem "database_cleaner-active_record", "~> 1.8"
gem "bcrypt", "~> 3.1"

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
end
