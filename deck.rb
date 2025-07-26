require_relative 'card' #CardClass読み込み

class Deck
    attr_accessor :cards #山札（配列）読み取れるようにする

    def initialize
        @cards = []
        suits = ["ハート", "スペード", "クラブ", "ダイヤ"]
        ranks = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
            suits.each do |suit|
                ranks.each do |rank|
                    @cards << Card.new(suit, rank)
                end
            end
    end
    def shuffle
        @cards.shuffle!
    end
end

#---TESTCODE---
deck = Deck.new

#カードが５２枚生成されるか？
puts "Total cards: #{deck.cards.size}"


