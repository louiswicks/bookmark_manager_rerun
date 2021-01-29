require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '#all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "twitter.com", title: "Twitter")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 1
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Twitter'
      expect(bookmarks.first.url).to eq 'twitter.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'twitter.com', title: 'Twitter')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Twitter'
      expect(bookmark.url).to eq 'twitter.com'
    end
  end 

end
