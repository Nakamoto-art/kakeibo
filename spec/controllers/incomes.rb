require 'rails_helper'

describe IncomesController do
  describe 'GET #index' do
    it "日付で降順にソート" do
      incomes = create_list(:income, 3)
      get :index
      expect(assigns(:incomes)).to match (incomes.sort{|a, b| b.date <=> a.date})
    end

    it "ページ遷移の確認" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    it "ページ遷移の確認" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "変数@incomeの確認" do
      income = create(:income)
      get :edit, params: {id: income}
      expect(assigns(:income)).to eq income
    end

    it "ページ遷移の確認" do
      income = create(:income)
      get :edit, params: {id: income}
      expect(response).to render_template :edit
    end
  end

  describe 'GET #show' do
    it "変数@incomeの確認" do
      income = create(:income)
      get :show, params: {id: income}
      expect(assigns(:income)).to eq income
    end

    it "ページ遷移の確認" do
      income = create(:income)
      get :show, params: {id: income}
      expect(response).to render_template :show
    end
  end

  describe 'POST #create' do
    it "データベースへの保存確認" do
      income_params = attributes_for(:income)
      expect{post :create, params: {income: income_params}}.to change(Income, :count).by(1)
    end

    it "ページ遷移の確認" do
      income_params = attributes_for(:income)
      post :create, params: {income: income_params}
      expect(response).to redirect_to incomes_path
    end
  end

  describe 'delete #destroy' do
    it "incomeの削除" do
      income = create(:income)
      expect{delete :destroy, params: {id: income}}.to change(Income, :count).by(-1)
    end
  end
end