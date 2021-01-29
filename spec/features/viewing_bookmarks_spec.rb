feature "viewing bookmarks" do
  scenario "show all bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("insert into bookmarks values(1, 'twitter.com')")
    visit '/bookmarks'
    expect(page).to have_content "twitter.com"
  end
end
