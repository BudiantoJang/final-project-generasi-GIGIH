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

    def self.change_status
        where.not(status: "PAID").where(created_at: Date.today.beginning_of_day..Date.today.end_of_day).update_all(status: "CANCELED")
    end
end
