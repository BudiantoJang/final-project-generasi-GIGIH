class Order < ApplicationRecord
    has_many :order_details, :dependent => :delete_all 
    belongs_to :customer
end
