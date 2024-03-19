# frozen_string_literal: true

ActiveAdmin.register Stock do
  permit_params :quantity, :product_id

  index do
    selectable_column
    id_column
    column :quantity
    column :product
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :quantity
      f.input :product.name
    end
    f.actions
  end
end
