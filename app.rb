# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

# class to run Bookamrk web app
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  # added add_bookmark to bookmark
  # get '/add_bookmark' do
  #   erb :add_bookmark
  # end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
