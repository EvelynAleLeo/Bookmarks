
feature 'View bookmarks' do
  scenario 'Visit the index page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
end