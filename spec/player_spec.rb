require 'player'

describe Player do
  
  subject(:player1) { Player.new("Tunji") }
  subject(:player2) { Player.new("Natalie") }

  context '#name' do
    it 'returns players name' do
      expect(player1.name).to eq("Tunji")
    end
  end

  context '#hit_points' do
    it 'it returns default hit points' do
      expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  context 'recieve_damage' do
    it 'reduces the player hit points' do
      expect { player1.receive_damage }.to change { player1.hit_points }.by(-10)
    end
  end
end