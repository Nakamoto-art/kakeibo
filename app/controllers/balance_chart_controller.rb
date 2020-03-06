class BalanceChartController < ApplicationController
  def index
    @income = Income.where()
    year = params[:income][:date]
    @year["year(1i)"].to_i
    binding.pry
    gon.data = []
    6.times do
      gon.data << rand(100.0)
    end
  end
end
