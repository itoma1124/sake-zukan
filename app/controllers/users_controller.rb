class UsersController < ApplicationController
  def show
    @sakes = Sake.includes(:user).where(user_id:current_user.id) #ユーザーの投稿した酒のみ
  end
end
