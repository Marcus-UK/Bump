feature 'reject if not signed up' do
  scenario 'go to log_in page fill in and expect p to throw error' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'gi_joeuk@hotmail.com'
    fill_in 'Password', with:'123345'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password')
  end
end

feature 'succesfully sign in if user signed up' do
  scenario 'sign up, go to log_in page and be allowed to log in' do
    sign_up
    click_link 'Logout'
    click_link 'Login'
    fill_in 'Email', with: 'gi_joeuk@hotmail.com'
    fill_in 'Password', with: '123345'
    click_button 'Log in'
    expect(page).to have_content("Signed in successfully.")
  end
end

feature 'succesfully sign out if user signed up' do
  scenario 'sign up, go to log_in page and be allowed to log out again' do
    sign_up
    click_link 'Logout'
    expect(page).to have_content("Signed out successfully.")
  end
end
