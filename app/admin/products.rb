# frozen_string_literal: true

ActiveAdmin.register Product do
  menu priority: 4

  permit_params :name, :price, :category_id

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :category
    column :created_at
    actions
  end

  filter :name
  filter :category_id
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :category.name
    end
    f.actions
  end
end
