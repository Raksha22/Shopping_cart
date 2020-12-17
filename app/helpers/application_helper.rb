module ApplicationHelper
    def has_role?(role)
        current_user && current_user.has_role?(role)
      end

    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new
        end
    end
end
