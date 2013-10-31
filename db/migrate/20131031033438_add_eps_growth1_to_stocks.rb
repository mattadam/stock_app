class AddEpsGrowth1ToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :eps_growth1, :decimal
  end
end
