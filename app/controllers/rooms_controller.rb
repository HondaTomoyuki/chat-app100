class RoomsController < ApplicationController
  before_action :authenticate_user! # Deviseのログイン確認
  before_action :move_to_index, except: [:show]


  def show
    # メッセージ一覧を取得
    @messages = Message.all
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
