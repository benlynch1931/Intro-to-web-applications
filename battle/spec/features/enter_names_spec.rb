feature 'Testing enter names works' do
  scenario 'Can enter name and seeing them printed out on screen' do
    visit('/')
    fill_in('Player1_Name', with: 'Me')
    fill_in('Player2_Name', with: 'You')
    click_on('Submit')
    expect(page).to have_text("Me")
    expect(page).to have_text("You")
  end
end
