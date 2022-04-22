class Category < ApplicationRecord
    has_many :item_categories, :dependent => :delete_all 
    has_many :items, through: :item_categories

    #presence = can't be blank
    #uniqueness = can't have duplicate values
    validates :name, {presence: true, uniqueness: true}
end
