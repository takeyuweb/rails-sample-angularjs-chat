require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe 'メッセージ一覧を取得' do
    it 'HTTP OKを返すこと' do
      get :index, format: 'json'
      expect(response).to be_success
    end
  end

  describe 'メッセージ作成' do
    let(:valid_attrs){ {body: 'sample body'} }
    it 'HTTP Createdを返すこと' do
      post :create, message: valid_attrs
      expect(response).to have_http_status(:created)
    end

    it '作成したメッセージをレスポンスに含めること' do
      post :create, message: valid_attrs
      expect(MultiJson.load(response.body)).to include(valid_attrs.stringify_keys)
    end
  end

end
