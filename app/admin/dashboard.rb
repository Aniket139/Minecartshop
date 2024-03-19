# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Total Order" do
          @total_order = Order.count
          para @total_order
        end
      end

      column do
        panel "Profits" do
          @order = Order.all
          @total_price = []
          @order.each do |order|
            @total_order_price = order.product.price 
            @total_price << @total_order_price
          end
          @revenue = @total_price.sum * 10/100
          para @revenue
        end
      end
    end
  end # content
end

