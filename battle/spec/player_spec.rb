require 'player'

describe Player do
  subject(:player1) { Player.new('Player1')}
  subject(:player2) { Player.new('Player2')}

  context '#name' do

    it 'Returns player\'s name' do
      expect(player1.name).to eq "Player1"
    end

  end

  context '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq described_class::DEFAULT_HP
    end
  end



  context '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player1.receive_damage }.to change { player1.hit_points }.by(-10)
    end
  end
end
