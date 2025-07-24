require_relative 'card'
require_relative 'player'
require_relative 'deck'
require_relative 'game'

#---テスト用プレイヤーを作成---
player1 = Player.new("プレイヤー１")
player2 = Player.new("プレイヤー２")

#---ゲームを作成し、カードを配る---
game = Game.new([player1,player2])
game.start

#---配られたカードを表示する---
puts player1.show_card
puts player2.show_card