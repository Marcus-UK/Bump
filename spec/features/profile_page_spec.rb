feature 'Profile page' do
  let (:user) { User.new }
  scenario "User can see their profile page and their current location" do
    add_user
    sign_up
    click_link 'My profile'
    expect(page).to have_content(user.place)
  end

  scenario "User can see their profile page and their username" do
    add_user
    sign_up
    click_link 'My profile'
    expect(page).to have_content(user.username)
  end
end
