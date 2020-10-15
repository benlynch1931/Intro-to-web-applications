feature 'Attacking' do

  scenario "attack player2" do
    sign_in_and_play
    click_button 'attack_submit'
    expect(page).to have_content 'Player1 attacked Player2'
  end

  scenario "reduce player2 HP by 10" do
    sign_in_and_play
    click_on "Attack"
    click_link "OK"
    expect(page).not_to have_content "Player2: 100HP"
    expect(page).to have_content "Player2: 90HP"
  end
end
