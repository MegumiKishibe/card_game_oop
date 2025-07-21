Card_Game_OOP(Object Oriented Programming)オブジェクト指向プログラミング


① カプセル化（Encapsulation）
「データ（変数）と処理（メソッド）を1つのオブジェクトにまとめる」
→ 外部から直接データを書き換えさせず、メソッド経由で安全に扱う。

例：
class Player
  def initialize(name)
    @name = name  # ← 外から直接触れない「インスタンス変数」
  end

  def greet
    puts "こんにちは、#{@name}です！"
  end
end

player = Player.new("太郎")
player.greet  # => こんにちは、太郎です！

② 継承（Inheritance）
「親クラスの性質を子クラスに引き継ぐ」
→ 共通部分を親に書いて、子は個別の部分だけ書けばOK。

例：
class Animal
  def speak
    puts "何か鳴いています"
  end
end

class Dog < Animal
  def speak
    puts "ワン！"
  end
end

Dog.new.speak  # => ワン！

③ ポリモーフィズム（Polymorphism）
「同じメソッド名でも、オブジェクトごとに違う動きをする」
→ 同じ speak メソッドでも、犬は「ワン」、猫は「ニャー」と鳴く。

例：
class Cat < Animal
  def speak
    puts "ニャー！"
  end
end

animals = [Dog.new, Cat.new]
animals.each { |a| a.speak }
# => ワン！
# => ニャー！
