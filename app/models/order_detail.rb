class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order
  has_one :customer, through: :order
end
