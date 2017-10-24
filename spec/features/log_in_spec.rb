feature 'reject if not signed up' do
  scenario 'go to log_in page fill in and expect p to throw error' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'gi_joeuk@hotmail.com'
    fill_in 'Password', with:'123345'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password')
  end
end
