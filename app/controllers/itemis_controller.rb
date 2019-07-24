class ItemisController < ApplicationController

    def create
        if order_params[:content].present?
            @order = current_order
            @order.itemis.new(order_params)
            @order.save
            session[:order_id] = @order.id
            redirect_to home_csalee_path
        end
    end

    def update
        @order = current_order
        @order_item = @order.itemis.find(params[:id])
        @order_item.update_attributes(order_params)
        @order.save
        redirect_to order_panier_path
    end

    def destroy
        @order = current_order
        @order_item = @order.itemis.find(params[:id])
        @order_item.destroy
        @order.save
        redirect_to order_panier_path
    end


    private

    def order_params
        params.require(:itemi).permit(:name, :content, :unit_price, :quantity_quantity)
    end
end
