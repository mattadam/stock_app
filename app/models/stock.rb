class Stock < ActiveRecord::Base
  attr_accessible :name, :ticker, :url

  def roe_growth?
    roe_before_last > roe_fourth_year && roe_last_year > roe_before_last  ? true : false
  end

  def eps_growth?
    eps_growth1 > eps_growth2 && eps_growth2 > eps_growth3 && eps_growth3 > eps_growth4  ? true : false
  end
end
