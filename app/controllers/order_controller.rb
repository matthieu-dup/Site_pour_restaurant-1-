class OrderController < ApplicationController

    def panier
        @each_item = current_order.itemis
    end

    def command
        @items = current_order.total
    end

    def sendmail
        if paramss[:items].to_i != 0
            MailerManagerMailer.send_command(paramss[:nomm],paramss[:prenom],paramss[:adresse],paramss[:codepostal],paramss[:ville],paramss[:telephone],paramss[:mail], paramss[:payement], current_order).deliver_now!
            sendmail_client
        else
            redirect_to root_path
        end
    end
    def sendmail_client
        MailerManagerMailer.send_client(paramss[:nomm],paramss[:prenom],paramss[:adresse],paramss[:codepostal],paramss[:ville],paramss[:telephone],paramss[:mail], paramss[:payement], current_order).deliver_now!
        @order = current_order
        @order_item = @order.itemis
        @order_item.destroy_all
        @order.save
        redirect_to root_path
    end

    def paramss
        params.permit(:nomm, :prenom, :adresse, :codepostal, :ville, :telephone, :mail, :items, :payement)
    end
end