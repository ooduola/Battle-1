

feature 'player 1 can see player 2 hit points' do
  scenario 'hit point bar is visible' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content '50HP'
  end
end
