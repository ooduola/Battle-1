feature 'player 1 can attack player 2' do
  scenario 'attack button is visible' do
    visit '/'
    sign_in_and_play
    click_button 'attack'
  end
end
