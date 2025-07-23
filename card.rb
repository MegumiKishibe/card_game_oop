#Card Class
class Card
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
    def show_card
        "#{suit}の#{rank}です。"
    end
end
