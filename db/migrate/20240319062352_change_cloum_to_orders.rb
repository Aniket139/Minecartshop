class ChangeCloumToOrders < ActiveRecord::Migration[7.1]
  def change
    change_column :orders, :mobile, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
