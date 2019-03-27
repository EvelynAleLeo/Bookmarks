require 'sinatra/base'
require './lib/bookmark_model.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all #all is the class method
    erb(:bookmarks_get)
  end

  run! if app_file == $0
end