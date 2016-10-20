ActiveAdmin.register Product do
  permit_params :name, :description, :price, :shape_type, :category_id, :color_id

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :shape_type
    column :category do |prod|
      prod.category.name
    end
    column :color do |prod|
      prod.color.name
    end
    column :created_at
    actions
  end

  filter :name
  filter :description
  filter :created_at

  form do |f|
    f.inputs 'Admin Details' do
      f.input :name
      f.input :description
      f.input :price
      f.input :shape_type
      f.input :category, as: :select, collection: Category.all, include_blank: false
      f.input :color, as: :select, collection: Color.all, include_blank: false
    end
    f.actions
  end
end