require 'rails_helper'

RSpec.describe Cost do
  describe 'バリデーションのテスト' do
    before do
      @cost = build(:cost)
    end

    it 'date,name,price,descriptionがある場合、保存が有効' do
      cost = FactoryBot.build(:cost)
      expect(cost).to be_valid
    end

    it 'dateが空だと無効' do
      @cost.date = ''
      expect(@cost.valid?).to eq(false)
    end

    it 'nameが空だと無効' do
      @cost.name = ''
      expect(@cost.valid?).to eq(false)
    end

    it 'priceが空だと無効' do
      @cost.price = ''
      expect(@cost.valid?).to eq(false)
    end
  end
end