require 'sqlite3'

db=SQLite3::Database.new("testdb")

db.execute("SELECT * FROM Names") do |row|
    puts row[0].to_s + " ==> " + row[1]
end
