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

        until @deck.cards.empty? #カードがなくなるまで繰り返す
            puts "戦争！"
            play_turn
        end

        display_result

        puts "戦争を終了します"
    end

    def play_turn

        @players.each do |player|
            player.card = @deck.cards.pop
        end

        puts @players[0].show_card
        puts @players[1].show_card

        if @players[0].card.rank == @players[1].card.rank
            puts "引き分けです。"
        else
            winner = [@players[0], @players[1]].max_by { |p| rank_value(p.card.rank) }
            puts "#{winner.name}が勝ちました。#{winner.name}はカードを2枚もらいました"
            winner.won_cards << @players[0].card #勝ったプレイヤーにカードを渡す
            winner.won_cards << @players[1].card
        end
    end

    def display_result #カードの数を比べて結果表示
        if @players[0].won_cards.size > @players[1].won_cards.size
            puts "#{@players[0].name}が１位,#{@players[1].name}が２位です。"
        else
            puts "#{@players[1].name}が１位,#{@players[0].name}が２位です。"
        end
    end
    private

    def rank_value(rank)
        values = {"A"=>13, "K"=>12, "Q"=>11, "J"=>10, "10"=>9, "9"=>8, "8"=>7, "7"=>6, "6"=>5, "5"=>4, "4"=>3, "3"=>2, "2"=>1}
        values[rank]
    end
end
