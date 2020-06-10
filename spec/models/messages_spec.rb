require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーション' do
    let!(:user) { FactoryBot.create(:user) }
    let!(:room) { FactoryBot.create(:room) }
    let(:message) { FactoryBot.create(:message) }

    it 'contentが入力されている場合エラーにならないこと' do
      expect(message).to be_valid
    end
    
    it 'contentが入力されていない場合エラーになること' do
      message.content = ''
      expect(message).to be_invalid
    end
  end
end
