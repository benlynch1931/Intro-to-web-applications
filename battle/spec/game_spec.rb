require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, attack: player_2.receive_damage }
  let(:player_2) { double :player, receive_damage: true }

  context '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.player_1.attack(player_2)
      # player_1.attack(player_2.player)
    end
  end

  context '#player1' do
    it 'returns player_1 name' do
      expect(game.player_1).to  eq player_1
    end
  end

  context '#player2' do
    it 'returns player_2 name' do
      expect(game.player_2).to  eq player_2
    end
  end

end
