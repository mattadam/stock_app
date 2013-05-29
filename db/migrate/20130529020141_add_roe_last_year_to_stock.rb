class AddRoeLastYearToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :roe_last_year, :decimal
  end
end
