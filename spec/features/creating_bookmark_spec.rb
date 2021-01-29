feature "adding bookmark to bookmark manager" do
  scenario "creating new bookmark" do
    visit '/add_bookmark'
    fill_in 'url' , with: 'youtube.com'
    click_on 'Add bookmark'
    expect(page).to have_content 'youtube.com'
  end
end
