require_relative 'deck'

# --- Test Code ---
deck = Deck.new
puts "Total cards: #{deck.cards.size}"  # => 52 が表示されればOK

# 先頭の5枚を確認してみる
deck.cards.first(5).each do |card|
  puts "#{card.suit}の#{card.rank}"
end
