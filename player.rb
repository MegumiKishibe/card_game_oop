class Player
    attr_accessor :name, :card, :won_cards #We need ":card" so we can assign a card to the player later
    def initialize(name)
        @name = name
        @card = nil     #Start with no card assigned to the player
        @won_cards = []
    end
    def show_card
        if @card
            "#{name}のカードは#{card.show_card}"
        end
    end
end

