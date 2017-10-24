def sign_up
  visit '/users/sign_up'
  fill_in 'user[email]', with: 'gi_joeuk@hotmail.com'
  fill_in 'user[user_name]', with: 'GIJoe'
  fill_in 'user[password]', with:'123345'
  fill_in 'user[password_confirmation]', with:'123345'
  click_button 'Sign up'
end
