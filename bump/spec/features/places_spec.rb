feature 'check places class' do
  scenario 'can create a new instance of place' do
    visit('/places/new')
    fill_in 'place[title]', with: 'Makers Academy'
    fill_in 'place[visited_by]', with: 'JoeI'
    fill_in 'place[address]', with: '50 Commercial Street'
    click_button 'Add!'
    expect(page).to have_link('Makers Academy')
  end
end
