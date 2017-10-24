feature 'create new user' do
  scenario 'go to new_user page fill in and check created' do
    sign_up
    expect(page).to have_content('Places')
  end
end
