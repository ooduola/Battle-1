
feature 'Attacking' do
  scenario 'reduces player 2 by 10 HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'player2: 50HP'
    expect(page).to have_content 'player2: 40HP'
  end
end
