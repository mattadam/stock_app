class AddEpsGrowth2ToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :eps_growth2, :decimal
  end
end
