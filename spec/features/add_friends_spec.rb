feature 'You can add friends' do
  scenario "User clicks to add a friend on the user index" do
    add_user
    sign_up
    visit('/users')
    click_link 'Add Friend'
    expect(page).to have_content 'Added friend.'
  end
end


feature 'You can remove friends' do
  scenario "User clicks to add a friend on the user index" do
    add_user
    sign_up
    visit('/users')
    click_link 'Add Friend'
    expect(page).to have_content 'Added friend.'
    click_link 'remove'
  end
end
