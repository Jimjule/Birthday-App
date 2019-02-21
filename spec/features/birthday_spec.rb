feature 'enter name' do
  scenario 'user can submit name and have it appear on screen' do
    visit('/')
    fill_in :name, with: 'Joey Jo-jo Junior'
    click_button 'Submit'
    expect(page).to have_content 'Hello Joey Jo-jo Junior'
  end
end
