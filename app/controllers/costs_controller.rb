class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update]

  def index
    @costs = Cost.order(date: :desc)
  end

  def new
    @cost = Cost.new
  end

  def create
    @cost = Cost.create(cost_params)
    if @cost.save
      redirect_to costs_path, notice: "#{@cost.name} を登録しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @cost.update(cost_params)
      redirect_to costs_path
    else
      render "edit"
    end
  end

  def destroy
    cost = Cost.find(params[:id])
    cost.destroy
    redirect_to costs_path
  end

  private
  def cost_params
    params.require(:cost).permit(Cost::REGISTRABLE_ATTRIBUTES, :name, :price, :description)
  end

  def set_cost
    @cost = Cost.find(params[:id])
  end
end
