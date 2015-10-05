Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "spree_notifications"
  s.version = "3.0.4"
  s.summary = "A background notification extension for Spree"
  s.description = <<-DESCRIPTION.gsub(/\s+/, " ").strip
    Spree Notifications allows you to queue up flash messages in the database
    to be displayed to targeted at a particular guest or registered user.
  DESCRIPTION
  s.required_ruby_version = ">= 2.0.0"

  s.authors = ["Prem Sichanugrist", "Vincent Franco", "David Freerksen"]
  s.homepage  = "https://github.com/groundctrl/spree_notifications"

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = "lib"
  s.requirements << "none"

  s.add_dependency "spree_core", "~> 3.0.4"

  s.add_development_dependency "capybara", "~> 2.4"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl", "~> 4.5"
  s.add_development_dependency "ffaker"
  s.add_development_dependency "rspec-rails",  "~> 3.1"
  s.add_development_dependency "sass-rails", "~> 5.0.0.beta1"
  s.add_development_dependency "selenium-webdriver"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "sqlite3"
end
