require 'rails_helper'

RSpec.describe Sake, type: :model do
  before do
    user = FactoryBot.create(:user)
    @sake = FactoryBot.build(:sake)
  end

  describe'登録可'do
    it'全ての情報があれば登録できる'do
      expect(@sake).to be_valid
    end
    it'名前があれば登録できる'do
      @sake.category = ""
      @sake.total_id = ""
      @sake.taste_id = ""
      @sake.sourness_id = ""
      @sake.easy_id = ""
      @sake.place = ""
      @sake.impression = ""
      @sake.maker = ""
      @sake.area_id = ""
      @sake.text = ""
      @sake.image = nil
      expect(@sake).to be_valid
    end
  end

  describe'登録不可'do
    it'名前がないと登録できない'do
      @sake.name = ""
      @sake.valid?
      expect(@sake.errors.full_messages).to include("酒の名前を入力してください")
    end
  end
end
