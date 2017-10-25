feature 'You can add friends' do

  scenario "User clicks to add a friend on the user index" do
    add_user
    sign_up
    p User.all
    visit('/users')
    p page.body
    click_link 'Add Friend'
    expect(page).to have_content 'Added friend.'
  end
end
