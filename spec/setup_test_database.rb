require 'pg'

def setup_test_database
  
  connection = PG.connect :dbname => 'bookmark_manager_test', :user => 'evelynblazquez'
  
  connection.exec("TRUNCATE bookmarks;")
end

