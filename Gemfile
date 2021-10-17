source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'sqlite3'
gem 'puma', '>= 4.3.9'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'enumerize'
gem 'graphql'
gem 'rack-cors'
gem 'nokogiri', '>= 1.11.4'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot'
  gem 'ffaker'
end

group :test do
  gem 'shoulda-matchers', '~> 4.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'graphiql-rails'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
