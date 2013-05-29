class AddRoeBeforeLastToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :roe_before_last, :decimal
  end
end
