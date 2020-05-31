require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }
  
  context '#attack' do
    it 'damages another player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  context '#player1' do
    it 'returns the first player' do
      expect(game.player1).to eq(player1)
    end
  end

  context '#player2' do
    it 'returns the first player' do
      expect(subject.player2).to eq(player2)
    end
  end
  
  context '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end

  context '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end
end