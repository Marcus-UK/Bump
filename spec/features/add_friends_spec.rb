feature 'You can add friends' do
  scenario "User clicks to add a friend on the user index" do
    add_user
    sign_up
    visit('/users')
    click_link 'Find Friends!'
    save_and_open_page
    click_link 'Add Friend'
    expect(page).to have_content 'Added friend.'
  end
end


feature 'You can remove friends' do
  scenario "User clicks to add a friend on the user index" do
    add_user
    sign_up
    click_link 'Find Friends!'
    click_link 'Add Friend'
    click_link 'Friends'
    click_link 'remove'
    expect(page).to have_content 'Success: Removed friendship.'
  end
end
