class Itemi < ApplicationRecord
    belongs_to :order

    before_save :set_unit_price_and_total


    def unit_price
        self[:unit_price]
    end

    private
    def set_unit_price_and_total
        self[:unit_price] = unit_price
        self[:total] = unit_price * quantity_quantity
    end

end
