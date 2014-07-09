require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'bodyが必須' do
    message = Message.new
    expect(message).to_not be_valid
  end
end
