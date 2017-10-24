feature 'create new user' do
  scenario 'go to new_user page fill in and check created' do
    visit '/users/sign_up'
    fill_in 'user[email]', with: 'gi_joeuk@hotmail.com'
    fill_in 'user[password]', with:'123345'
    fill_in 'user[password_confirmation]', with:'123345'
    click_button 'Sign up'
    expect(page).to have_content('Places')
  end
end
