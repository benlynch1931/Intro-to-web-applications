require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, receive_damage: 'P1: 90HP' }
  let(:player_2) { double :player_2, receive_damage: 'P2: 90HP' }

  context '#attack' do
    it 'damages player2 then player1' do
      expect(game.attack).to eq 'P2: 90HP'
      expect(game.attack).to eq 'P1: 90HP'
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
