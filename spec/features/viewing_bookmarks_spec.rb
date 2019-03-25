
feature 'View bookmarks' do
  scenario 'Visit the index page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'View saved bookmarks' do
  scenario 'View the stored bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "Bookmark"
  end
end