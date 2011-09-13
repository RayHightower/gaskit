source :rubygems
gemspec

group :test do
  gem 'rspec'
  gem 'rack-test', :require => 'rack/test'
  gem 'factory_girl'
  gem 'cucumber'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'launchy'
end

group :development, :test do
  gem 'rake'
  gem 'ruby-debug',   :platform => :mri_18
  gem 'ruby-debug19', :platform => :mri_19, :require => 'ruby-debug'
end