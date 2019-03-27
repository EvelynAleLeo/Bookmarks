require 'bookmark_model'

describe Bookmark do

  subject(:bookmark) { described_class } 

  it '#all returns all the bookmarks' do

    expect(bookmark.all).to eq ['https://www.google.com', 'https://www.facebook.com', 'https://www.twitter.com']
  end

end