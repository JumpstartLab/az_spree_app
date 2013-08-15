source 'https://rubygems.org'

gem 'rails', '3.2.14'
gem 'sqlite3'
gem 'jquery-rails'
gem 'spree', '2.0.4'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-0-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-0-stable'
gem 'spree_admin_user_panel', :path => '../spree_admin_user_panel'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
end

group :development do
  gem 'debugger'
  gem 'quiet_assets'
end