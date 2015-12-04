require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'fluffy-waffle-sinatra.sqlite3.db'
)

class Muffin < ActiveRecord::Base
end

get '/' do
  "Merry Christma, ya filthy."
end
