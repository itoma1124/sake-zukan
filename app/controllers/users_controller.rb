class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @sakes = Sake.includes(:user).where(user_id:@user.id) #ユーザーの投稿した酒の一覧
    @complete = @sakes.where.not(name:"",impression:"",maker:"",text:"",category:"",total_id:0,taste_id:0,sourness_id:0,easy_id:0,place:"",area_id:0)#自分の投稿のうち、項目が埋まっているもの

    if user_signed_in?
      my_sake = Sake.includes(:user).where(user_id:current_user.id) #自分の投稿した酒の一覧
    end

    favorite_id = Favorite.where(user_id: @user.id).pluck(:sake_id)  #ユーザーのお気に入りのsake_idカラムを取得
    @favorites = Sake.find(favorite_id) #ユーザーのお気に入り登録した酒の一覧
  end
end
