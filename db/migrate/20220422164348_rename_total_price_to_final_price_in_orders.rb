class RenameTotalPriceToFinalPriceInOrders < ActiveRecord::Migration[7.0]
  def change
    def up
      rename_column :orders, :total_price, :final_price
    end
  
    def down
      rename_column :orders, :final_price, :total_price
    end
  end
end
