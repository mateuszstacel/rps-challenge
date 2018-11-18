require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :players }
  let(:player_2) { double :players }
  let(:rock) { double :rock }
  let(:paper) { double :paper }
  let(:scissors) { double :scissors }


  describe '#score_player_1' do
    it { is_expected.to respond_to :score_player_1 }

    it 'players start with 0' do
      expect(game.score_player_2).to eq 0
    end
  end

  describe '#score_player_2' do
    it { is_expected.to respond_to :score_player_2 }

    it 'players start with 0' do
      expect(game.score_player_2).to eq 0
    end
  end

  describe '#player_1' do
    it { is_expected.to respond_to :player_1 }

    it 'players start with 0' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it { is_expected.to respond_to :player_1 }

    it 'players start with 0' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#result' do
    it { is_expected.to respond_to(:result).with(2).arguments }

      it 'return winner player 2 ' do
        allow(subject).to receive(:result).and_return(player_2)
        expect(game.result(rock, paper)).to eq player_2
      end

      it 'return draw' do
        allow(subject).to receive(:result).and_return("draw")
        expect(game.result(rock, rock)).to eq "draw"
      end

      it 'return winner player 1' do
        allow(subject).to receive(:result).and_return(player_1)
        expect(game.result(rock, scissors)).to eq player_1
      end
  end
end
