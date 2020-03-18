require 'rails_helper'

describe CostsController do
  describe 'GET #index' do
    it "日付で降順にソート" do
      costs = create_list(:cost, 3)
      get :index
      expect(assigns(:costs)).to match (costs.sort{|a, b| b.date <=> a.date})
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
    it "変数@costの確認" do
      cost = create(:cost)
      get :edit, params: {id: cost}
      expect(assigns(:cost)).to eq cost
    end

    it "ページ遷移の確認" do
      cost = create(:cost)
      get :edit, params: {id: cost}
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    it "データベースへの保存確認" do
      cost_params = attributes_for(:cost)
      expect{post :create, params: {cost: cost_params}}.to change(Cost, :count).by(1)
    end

    it "ページ遷移の確認" do
      cost_params = attributes_for(:cost)
      post :create, params: {cost: cost_params}
      expect(response).to redirect_to costs_path
    end
  end
end