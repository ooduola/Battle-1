
feature 'players can enter their name' do
  scenario 'submitting names of players' do
      sign_in_and_play
    expect(page).to have_content 'player1 vs. player2'
  end
end
