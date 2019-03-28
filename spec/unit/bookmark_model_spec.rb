require 'bookmark_model'
require 'pg'

describe Bookmark do

  it '#all returns all the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
    bookmarks = Bookmark.all

    expect(bookmarks).to include 'http://www.google.com'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
    expect(bookmarks).to include 'http://www.makersacademy.com'
  end

end