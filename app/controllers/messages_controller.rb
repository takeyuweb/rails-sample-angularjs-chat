class MessagesController < ApplicationController
  def index
    @messages = Message.all.order('created_at DESC').limit(10)
    render json: @messages
  end

  def create
    @message = Message.create(safe_params)
    render json: @message, status: :created
  end

  private
  def safe_params
    params.require(:message).permit(:body)
  end
end