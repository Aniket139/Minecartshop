# frozen_string_literal: true

ActiveAdmin.register Order do
  permit_params :customer, :mobile, :address, :quantity, :product_id

  index do
    selectable_column
    id_column
    column :product.name
    column :customer
    column :mobile
    column :address
    column :quantity
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :product
      f.input :customer
      f.input :mobile
      f.input :address
      f.input :quantity
    end
    f.actions
  end
end
