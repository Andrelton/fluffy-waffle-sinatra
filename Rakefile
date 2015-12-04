namespace :db do
  task :create do
    puts "Creating database: #{APP_NAME}"
    system("createdb #{APP_NAME}")
  end

  task :drop do
    puts "Dropping database: #{APP_NAME}"
    system("dropdb #{APP_NAME}")
  end
end
