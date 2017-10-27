feature 'check places class' do
  scenario 'can create a new instance of place' do
    sign_up
    visit('/places/new')
    fill_in 'place[title]', with: 'Makers Academy'
    fill_in 'place[address]', with: '50 Commercial Street'
    click_button 'Add!'

    expect(page).to have_content('50 Commercial Street')
    expect(page).to have_content('Makers Academy')

  end
end

# test should be obsolete once we are using live tracking
