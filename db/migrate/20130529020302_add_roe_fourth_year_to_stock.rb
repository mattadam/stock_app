class AddRoeFourthYearToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :roe_fourth_year, :decimal
  end
end
