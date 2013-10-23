source 'http://rubygems.org'

gem 'rails', '3.2.14'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'compass-rails'
  gem 'compass-h5bp'
end

gem 'jquery-rails'

# ORM
gem 'bson_ext'
gem 'mongoid'
gem 'mongoid_slug', :require => 'mongoid/slug'
gem 'mongoid_globalize'

# Media storage
gem 'aws-s3'
gem 'fog'
gem 'asset_sync'

# Image processing
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'rmagick'

# Cache
gem 'rack-cache' #, :require => 'rack/cache'
gem 'dalli'

#rack redirect
gem 'rack-rewrite'

gem "formtastic", "~> 2.1.1"

# Active Admin 
gem 'activeadmin-mongoid'
# Active Admin Settings
gem "carrierwave-mongoid", :require => "carrierwave/mongoid"
gem "mini_magick"
gem "activeadmin-settings"
gem "activeadmin-mongoid-reorder"


# Backup
gem "heroku-mongo-backup"

# Pagination
gem 'kaminari'

# Error logging
gem "airbrake"

# env vars
gem "figaro"

group :development do
  gem 'foreman'
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'unicorn'
end
