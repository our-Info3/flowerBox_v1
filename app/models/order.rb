class Order < ActiveRecord::Base
    belongs_to :user
    has_many :flower_boxes

    def calcPrice
        price = 0
        self.flower_boxes.each do |flower_box|
            price+=flower_box.calcPrice
        end
        price
    end
end
