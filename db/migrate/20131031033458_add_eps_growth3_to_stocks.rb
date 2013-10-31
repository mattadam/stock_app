class AddEpsGrowth3ToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :eps_growth3, :decimal
  end
end
