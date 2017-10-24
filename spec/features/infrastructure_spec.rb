feature 'basic onfrastructure test' do
  scenario 'can see landing at root' do
    visit('/')
    expect(page).to have_content('')
  end
end
