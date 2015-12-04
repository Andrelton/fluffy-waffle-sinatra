# Sets the app's root directory and name.
require "pathname"
APP_ROOT = Pathname.new(File.expand_path("../../", __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Requires all gems listed in gemfile.
require "bundler"
Bundler.require

# The 'configure' block is simply for appearances.
configure do
  set :root, APP_ROOT.to_path
  set :views, ->{ File.join(root, "app", "views") }
  set :database, { adapter: "sqlite3", database: "db/#{APP_NAME}.sqlite3" }
end

# In the event that models inherit from each other,
#   they must instead be lazy-loaded.
%w[controllers helpers models].each do |type|
  Dir[APP_ROOT.join("app", "#{type}", "*.rb")].each { |file| require file }
end
