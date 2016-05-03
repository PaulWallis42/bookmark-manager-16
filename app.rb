require 'sinatra/base'

class Bookmark-Manager-16 < Sinatra::Base
  get '/' do
    'Hello Bookmark-Manager-16!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
