require_relative 'card' #CardClass読み込み

class Deck
    attr_accessor :cards #山札（配列）読み取れるようにする

    def initialize
        @cards = create_deck #create_deckメソッド
        @cards.shuffle!
    end
end

private #ここから外から触ってはいけない内部処理を書きます

def create_deck
    suits = ["ハート","ダイヤ","クラブ","スペード"]
    ranks = ["A","K","Q","J","10","9","8","7","6","5","4","3","2"]
    suits.flat_map do |suit|
        ranks.map {|rank| Card.new(suit,rank) }
    end
end