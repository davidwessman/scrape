source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

gem 'nokogiri'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'capybara'
gem 'poltergeist'
gem 'uglifier'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv'
end

group :production do
  gem 'rails_12factor'
  gem 'therubyracer', platform: :ruby
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
