# frozen_string_literal: true

feature 'adding bookmark to bookmark manager' do
  scenario 'creating new bookmark' do
    visit '/bookmarks'
    fill_in 'url', with: 'youtube.com'
    fill_in 'title', with: 'Youtube'
    click_on 'Add bookmark'
    expect(page).to have_content 'Youtube'
  end
end
