require 'pg'

class Bookmark
  
  def self.all
    con = PG.connect :dbname => 'bookmark_manager', :user => 'evelynblazquez'
    
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