class Item < ApplicationRecord
    has_many :item_categories, :dependent => :delete_all 
    has_many :categories, through: :item_categories
    has_many :order_details
end
