feature 'Testing hit points are visible' do
  scenario 'Can see hit points' do
      visit('/')
      sign_in_and_play
    expect(page).to have_text("100HP").twice
  end
end
