class UsersController < ApplicationController
  def show
    @sakes = Sake.includes(:user).where(user_id:current_user.id) #ユーザーの投稿した酒のみ
    @complete = @sakes.where.not(name:"",impression:"",maker:"",text:"",category:"",total_id:0,taste_id:0,sourness_id:0,easy_id:0,place:"",area_id:0)
  end
end
