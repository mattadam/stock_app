require 'nokogiri'
require 'open-uri'

class StocksController < ApplicationController
  
  def index
  	@stocks = Stock.all
  end

  def new
  	@stock = Stock.new
  end

  def create
  	@stock = Stock.create(params[:stock])
  	stock_data_retriever
    eps_growth

  	if @stock.save 
  	  redirect_to stocks_path
  	else
  	  render :edit
  	end
  end

  def stock_data_retriever
  	url = "http://www.nasdaq.com/symbol/#{@stock.ticker}/financials?query=ratios"
    doc = Nokogiri::HTML(open(url))
    @stock.roe = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 12) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]').text
    @stock.roe_last_year = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 12) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 4) and parent::*)]').text
    @stock.roe_before_last = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 12) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]').text
    @stock.roe_fourth_year = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 12) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 6) and parent::*)]').text

    @stock.roe = @stock.roe.to_int
    @stock.roe_last_year = @stock.roe_last_year.to_int
    @stock.roe_before_last = @stock.roe_before_last.to_int
    @stock.roe_fourth_year = @stock.roe_fourth_year.to_int
  end

  def eps_growth
    url = "http://www.nasdaq.com/earnings/report/#{@stock.ticker}"
    doc = Nokogiri::HTML(open(url))
    @stock.eps_growth1 = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]').text
    @stock.eps_growth2 = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 4) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]').text
    @stock.eps_growth3 = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]').text
    @stock.eps_growth4 = doc.xpath('//tr[(((count(preceding-sibling::*) + 1) = 6) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]').text
    
  end
end


