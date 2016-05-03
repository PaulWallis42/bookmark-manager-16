require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager16 < Sinatra::Base

  get '/' do
    'Hello Bookmark_Manager_16!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
