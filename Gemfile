source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# rails/postgres/puma/redis
gem "pg", "~> 1.3"
gem "puma", "~> 5.6"
gem "rails", "~> 7.0"
gem "redis", "~> 4.6"

# faker for seeding
gem "faker", "~> 2.19"

# frontend stuff
gem "cssbundling-rails", "~> 1.1"
gem "jsbundling-rails", "~> 1.0"
gem "sprockets-rails", "~> 3.4"
gem "stimulus-rails", "~> 1.0"
gem "turbo-rails", "~> 1.0"

# API/JSON view
gem "jbuilder", "~> 2.11"

# automatically process images for active storage
gem "image_processing", "~> 1.12"

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "debug", "~> 1.4", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails", "~> 5.1"
end

group :development do
  gem "rubocop-performance", "~> 1.13", require: false
  gem "rubocop-rails", "~> 2.13", require: false
  gem "rubocop-rspec", "~> 2.8", require: false

  gem "foreman", "~> 0.87", require: false
  gem "pry-rails", "~> 0.3"
  gem "web-console", "~> 4.2"
end
