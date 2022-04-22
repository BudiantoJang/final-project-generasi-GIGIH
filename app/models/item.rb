class Item < ApplicationRecord
    has_many :item_categories, :dependent => :delete_all 
    has_many :categories, through: :item_categories
    has_many :order_details

    #presence = can't be blank
    #uniqueness = can't have duplicate values
    #length(maximum) = limiting max character lenght
    #numericallity = make sure value is integer or float
    #greater_than = make sure the value is greater than ...
    validates :name, {presence: true, uniqueness: true}
    validates :description, {presence: true, length: {maximum: 150}}
    validates :price, presence: true, numericality: {greater_than: 0.01}
end
