class Stock < ActiveRecord::Base
  attr_accessible :name, :ticker, :url

  def roe_growth?
    
    roe_before_last > roe_fourth_year && roe_last_year > roe_before_last  ? true : false
  end
end
