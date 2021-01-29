# frozen_string_literal: true

feature 'viewing bookmarks' do
  scenario 'show all bookmarks' do
    Bookmark.create(url: 'twitter.com', title: 'Twitter')
    visit '/bookmarks'
    expect(page).to have_link('Twitter', href: 'twitter.com')
  end
end
