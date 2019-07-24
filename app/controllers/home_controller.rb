class HomeController < ApplicationController
    def index
    end

    def csalee
        @item_new = current_order.itemis.new
    end

    def csucree
        @item_new = current_order.itemis.new
    end

    def milkshake
        @item_new = current_order.itemis.new
    end

    def smoothie
        @item_new = current_order.itemis.new
    end
end
