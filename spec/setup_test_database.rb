# in spec/setup_test_database.rb

require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookmarks, comments, bookmark_tags, tags;")

end
