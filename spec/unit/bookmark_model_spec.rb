require 'bookmark_model'

describe Bookmark do

  it '#all returns all the bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include 'http://www.google.com'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
    expect(bookmarks).to include 'http://www.makersacademy.com'
  end

end