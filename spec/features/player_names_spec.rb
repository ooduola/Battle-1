
feature 'players can enter their name' do 
  scenario 'submitting names of players' do
    visit '/'

    fill_in :player1_name, with: 'player1'
    fill_in :player2_name, with: 'player2'
    click_button 'start game'

    expect(page).to have_content 'player1 vs. player2'
  end
end
