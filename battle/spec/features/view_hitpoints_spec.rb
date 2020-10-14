feature 'Testing hit points are visible' do
  scenario 'Can see hit points' do
      visit('/')
      fill_in('Player1_Name', with: 'Me')
      fill_in('Player2_Name', with: 'You')
      click_on('Submit')
    expect(page).to have_text("10 hit points").twice
  end
end
