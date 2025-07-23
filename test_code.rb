require_relative 'card'   #class呼び出しコード
require_relative 'player'

#---Test----
card = Card.new("ハート", "7")
player = Player.new("プレイヤー１")
player.card = card #Playerクラスのインスタンス(Plyer)にCardクラスのインスタンス(Card)を代入。まだカード持ってないから。

puts player.show_card