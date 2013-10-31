class AddEpsGrowthToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :eps_growth, :decimal
  end
end
