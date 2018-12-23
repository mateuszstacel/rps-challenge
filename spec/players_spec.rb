require 'players'

describe Players do
    it 'responds to name' do
    players = Players.new('leon')
    expect(players.name).to eq ('leon')
  end
end
