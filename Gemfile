source :rubygems

gem "rails", "3.2.6"
gem "jquery-rails"
gem "will_paginate"
gem "mail_form"
gem "simple_form"
gem "delayed_job_active_record"
gem "delayed_job_web"
#gem "daemons"
gem "thin"
gem "pg"
gem "devise"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier",     ">= 1.0.3"
end

group :production do
  gem "therubyracer", :platform => :ruby
end

group :development do
  gem "mailcatcher"
  gem "pry",            :require => false
  gem "awesome_print",  :require => false
end

group :development, :test do
  gem "capistrano"
  gem "rspec-rails"
  gem "capybara"
end

group :test do
  gem "factory_girl"
  gem "factory_girl-preload"
end
