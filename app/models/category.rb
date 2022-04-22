class Category < ApplicationRecord
    has_many :item_categories, :dependent => :delete_all 
    has_many :items, through: :item_categories
end
