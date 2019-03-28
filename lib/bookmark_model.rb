require 'pg'

class Bookmark
  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'evelynblazquez'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'evelynblazquez'
    end
    rs = con.exec "SELECT * FROM bookmarks"
    
    result = []
    rs.each do |row|
      result << row['url']
    end

    rs.clear if rs
    con.close if con
    
    return result
  end

end