require "pathname"
APP_ROOT = File.expand_path("../../", __FILE__)
APP_NAME = Pathname.new(APP_ROOT).basename.to_s

require "bundler"
Bundler.require

set :root, APP_ROOT
set :database, { adapter: "sqlite3", database: "#{APP_NAME}.sqlite3"}

require File.expand_path("../../app.rb", __FILE__)
