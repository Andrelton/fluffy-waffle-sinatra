require "pathname"
APP_ROOT = Pathname.new(File.expand_path("../../", __FILE__))
APP_NAME = APP_ROOT.basename.to_s

require "bundler"
Bundler.require

set :root, File.expand_path("../../", __FILE__)
set :database, { adapter: "sqlite3", database: "#{APP_NAME}.sqlite3"}

require File.expand_path("../../app.rb", __FILE__)
