class FlowerBox < ActiveRecord::Base
    belongs_to :order
    has_many :flowers

    def calcPrice
        price = self.price
        self.flowers.each do |flower|
            price+=flower.price
        end
        price
    end
end
