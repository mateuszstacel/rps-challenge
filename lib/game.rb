class Game

def initialize(player_1, player_2)
@players = [player_1, player_2]
end

def player_1
  @players.first
end

def player_2
  @players.last
end

def result(player_1_input, player_2_input)
  if (player_1_input == "rock" && player_2_input == "scissors")
    @players.first

  elsif (player_1_input == "paper" && player_2_input == "rock")
    @players.first

  elsif (player_1_input == "scissors" && player_2_input == "paper")
    @players.first

  elsif (player_2_input == "rock" && player_1_input == "scissors")
    @players.last

  elsif (player_2_input == "paper" && player_1_input == "rock")
    @players.last

  elsif (player_2_input == "scissors" && player_1_input == "paper")
    @players.last
 end
end

end
