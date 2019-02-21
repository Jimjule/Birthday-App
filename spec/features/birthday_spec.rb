feature 'enter name' do
  scenario 'user can submit name and have it appear on screen' do
    visit('/')
    fill_in :name, with: 'Joey Jo-jo Junior'
    click_button 'Submit'
    expect(page).to have_content 'Hello Joey Jo-jo Junior'
  end

  scenario 'user can submit birthday and have it appear on screen' do
    visit('/')
    fill_in :name, with: 'Bort'
    fill_in :day, with: 5
    click_button 'Submit'
    expect(page).to have_content 'Hello Bort, 5'
  end

end
