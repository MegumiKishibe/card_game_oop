#カードを配る処理を実装

require_relative 'deck'
require_relative 'player'

class Game
    def initialize(players)
        @players = players
        @deck = Deck.new
    end

    def deal_cards
        @players.each do |player|
            player.card = @deck.cards.pop
        end
    end


    def start
        puts "戦争を開始します"
        puts "カードが配られました"

        deal_cards

        2.times do
            puts "戦争！"
            play_turn
        end

     puts "戦争を終了します"
    end

    def play_turn
        puts @players[0].show_card
        puts @players[1].show_card

        if @players[0].card.rank == @players[1].card.rank
            puts "引き分けです。"
        else
            winner = [@players[0], @players[1]].max_by { |p| rank_value(p.card.rank) }
            puts "#{winner.name}が勝ちました"
        end
    end

    private

    def rank_value(rank)
        values = {"A"=>13, "K"=>12, "Q"=>11, "J"=>10, "10"=>9, "9"=>8, "8"=>7, "7"=>6, "6"=>5, "5"=>4, "4"=>3, "3"=>2, "2"=>1}
        values[rank]
    end
end
