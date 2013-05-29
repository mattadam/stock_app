class AddRoeToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :roe, :decimal
  end
end
