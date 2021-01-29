feature "viewing bookmarks" do
  scenario "show all bookmarks" do
    Bookmark.create(url: "twitter.com")
    visit '/bookmarks'
    expect(page).to have_content "twitter.com"
  end
end
