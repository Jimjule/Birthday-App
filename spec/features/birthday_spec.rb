feature 'enter details' do
  scenario 'user can submit birthday and have it appear on screen' do
    visit('/')
    fill_in :name, with: 'Bort'
    fill_in :day, with: 5
    select('March', :from => :month)
    click_button 'Submit'
    expect(page).to have_content 'Hello Bort, 5, 03'
  end

end
