# == Schema Information
#
# Table name: colors
#
#  id   :integer          not null, primary key
#  name :string
#

class Color < ActiveRecord::Base
  has_many :products, class_name: :Product

  validates :name, presence: true
end
