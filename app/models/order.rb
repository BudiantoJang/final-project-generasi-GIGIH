class Order < ApplicationRecord
    has_many :order_details, :dependent => :delete_all 
    belongs_to :customer


    def self.revenue
        total_revenue = 0
        self.all.each do |order|
            total_revenue += order.final_price
        end
        return total_revenue
    end
end
