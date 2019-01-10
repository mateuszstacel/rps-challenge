class Game

    attr_reader :score_player_1, :score_player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @score_player_1 = 0
    @score_player_2 = 0
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def result(player_1_input, player_2_input)

    if (player_1_input == "rock" && player_2_input == "scissors")
      @score_player_1 += 1
      @players.first

    elsif (player_1_input == "paper" && player_2_input == "rock")
      @score_player_1 += 1
      @players.first

    elsif (player_1_input == "scissors" && player_2_input == "paper")
      @score_player_1 += 1
      @players.first

    elsif (player_2_input == "rock" && player_1_input == "scissors")
      @score_player_2 += 1
      @players.last

    elsif (player_2_input == "paper" && player_1_input == "rock")
      @score_player_2 += 1
      @players.last

    elsif (player_2_input == "scissors" && player_1_input == "paper")
      @score_player_2 += 1
      @players.last

     end
    end
end
