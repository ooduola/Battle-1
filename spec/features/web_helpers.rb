def sign_in_and_play
  visit '/'

  fill_in :player1_name, with: 'player1'
  fill_in :player2_name, with: 'player2'
  click_button 'start game'
end
