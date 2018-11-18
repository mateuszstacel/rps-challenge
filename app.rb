require 'sinatra/base'
require './lib/game'
require './lib/players'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Players.new(params[:player_1])
    @player_2 = Players.new(params[:player_2])
    $game = Game.new(@player_1, @player_2)
    redirect '/game'
  end

  post '/player_chose' do
    $player_1_input = params[:rps_player_1]
    $player_2_input = params[:rps_player_2]
    redirect '/score'
  end

  get '/score' do
    if $player_1_input == $player_2_input
      erb :draw
    else
      erb :score
    end
  end

  get '/game' do
    @game = $game
    erb :game
  end

  run! if app_file == $0

end
