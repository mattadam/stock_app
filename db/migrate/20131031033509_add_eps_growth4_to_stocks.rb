class AddEpsGrowth4ToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :eps_growth4, :decimal
  end
end
