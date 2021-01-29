require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("insert into bookmarks (url) VALUES ('twitter.com')")

      bookmarks = Bookmark.all

      result = connection.exec('SELECT * FROM bookmarks;')
      result.each do |bookmark|
        bookmark
      end
      expect(bookmarks).to include "twitter.com"
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
    Bookmark.create('snapchat.com')
    expect(Bookmark.all).to include 'snapchat.com'
   end 
  end

end
