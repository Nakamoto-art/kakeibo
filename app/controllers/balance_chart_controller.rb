class BalanceChartController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show_year
    @year = params[:year]
    months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12" ]
    year_months = months.map do |month|
      @year + "-" + month + "-01"
    end

    i = 0
    total = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
    gon.incomes_data = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
    year_months.each do |year_month|
      incomes = Income.where(date: year_month)
      if incomes.present?
        total[i] = sum_income(incomes)
        gon.incomes_data[i] = total[i]
      end
      i += 1
    end
    incomes_total = total


    i = 0
    total = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
    gon.costs_data = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
    year_months.each do |year_month|
      costs = Cost.where(date: year_month)
      if costs.present?
        total[i] = sum_cost(costs)
        gon.costs_data[i] = total[i]
      end
      i += 1
    end
    costs_total = total


    balance_differences = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
    gon.results_data = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
		0.upto(11) do |i|
      if incomes_total[i].present? && costs_total[i].present?
        balance_differences[i] = incomes_total[i] - costs_total[i]
        gon.results_data[i] = balance_differences[i]
      end
    end
  end


  def sum_income(incomes)
    total = 0
    incomes.each do |income|
      total += income.price
    end
    total
  end

  def sum_cost(costs)
    total = 0
    costs.each do |cost|
      total += cost.price
    end
    total
  end
end