require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }
  
  context '#attack' do
    it 'damages another player' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end

    # context '#player1' do
  #   it 'returns the first player' do
  #     expect(game.player1).to eq(player1)
  #   end
  # end

  # context '#player2' do
  #   it 'returns the first player' do
  #     expect(subject.player2).to eq(player2)
  #   end
  # # end
  
end