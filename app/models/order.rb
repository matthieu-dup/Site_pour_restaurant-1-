class Order < ApplicationRecord
    has_many :itemis
    before_save :set_subtotal
    before_save :set_total

    # self[:total] is use to set the number of article(s).

    def subtotal_sub
        itemis.collect{|itemi| itemi.valid? ? itemi.unit_price*itemi.quantity_quantity : 0}.sum
    end
    def totalButItsTheNbOfArticles
        itemis.collect{|itemii| itemii.valid? ? itemii.quantity_quantity : 0}.sum
    end


    private

    def set_subtotal
        if subtotal_sub > 0
        self[:subtotal] = subtotal_sub
        else
        self[:subtotal] = 0
        end
    end
    def set_total
        if totalButItsTheNbOfArticles > 0
        self[:total] = totalButItsTheNbOfArticles
        else
        self[:total] = 0
        end
    end

end
