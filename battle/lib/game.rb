class Game
  # attr_reader :player
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @count = 0
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    @count += 1
    @count % 2 == 0 ? player_1.receive_damage : player_2.receive_damage

  end

end
