class UsersController < ApplicationController
  def show
    @sakes = Sake.includes(:user).where(user_id:current_user.id) #ユーザーの投稿した酒のみ
    @complete = @sakes.where.not(name:"",impression:"",maker:"",text:"",category:"",total_id:0,taste_id:0,sourness_id:0,easy_id:0,place:"",area_id:0)#自分の投稿のうち、項目が埋まっているもの
    favorite_id = Favorite.where(user_id: current_user.id).pluck(:sake_id)  # ログイン中のユーザーのお気に入りのsake_idカラムを取得
    @favorites = Sake.find(favorite_id) 
  end
end
