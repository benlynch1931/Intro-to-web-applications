feature 'Testing enter names works' do
  scenario 'Can enter name and seeing them printed out on screen' do
    sign_in_and_play
    expect(page).to have_text("Player1")
    expect(page).to have_text("Player2")
  end
end
