class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update]

  def index
    @incomes = Income.order(date: :desc)
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to incomes_path, notice: "#{@income.name} を登録しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @income.update(income_params)
      redirect_to incomes_path
    else
      render "edit"
    end
  end

  def destroy
    income = Income.find(params[:id])
    income.destroy
    redirect_to incomes_path
  end

  private
  def income_params
    params.require(:income).permit(Income::REGISTRABLE_ATTRIBUTES, :name, :price, :description)
  end

  def set_income
    @income = Income.find(params[:id])
  end
end
