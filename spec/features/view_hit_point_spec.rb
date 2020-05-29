

feature 'player 1 can see player 2 hit points' do
  scenario 'hit point bar is visible' do
    visit '/play'

    expect(page).to have_content '50/100 HP'
  end
end