require 'rails_helper'

RSpec.describe Income do
  describe 'バリデーションのテスト' do
    before do
      @income = build(:income)
    end

    it 'date,name,price,descriptionがある場合、保存が有効' do
      expect(@income).to be_valid
    end

    it 'dateが空だと無効' do
      @income.date = ''
      expect(@income.valid?).to eq(false)
    end

    it 'nameが空だと無効' do
      @income.name = ''
      expect(@income.valid?).to eq(false)
    end

    it 'priceが空だと無効' do
      @income.price = ''
      expect(@income.valid?).to eq(false)
    end
  end

end