feature 'You can see a list of friends' do
  scenario "User can click to see a list of all friends on the user index" do
    add_user
    sign_up
    visit('/users')
    click_link 'Add Friend'
    click_link 'Friends'
    expect(page).to have_content 'Your Friends'
  end
end
