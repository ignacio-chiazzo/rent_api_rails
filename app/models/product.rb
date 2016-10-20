# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  price       :decimal(, )
#  shape_type  :string
#  count_uses  :integer
#  category_id :integer
#  color_id    :integer
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_color_id     (color_id)
#

class Product < ActiveRecord::Base
  belongs_to :category 
  belongs_to :color

  validates :name, :category, :color, presence: true

end
