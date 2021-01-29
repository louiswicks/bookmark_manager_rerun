feature 'Visit index page' do
  scenario 'show text' do
    visit '/'
    expect(page).to have_content "Hello Bookmark manager"
  end
end
