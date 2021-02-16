class FavoritesController < ApplicationController
  def create 
    @sake = Sake.find(params[:sake_id])
    favorite = Favorite.create(user_id: current_user.id, sake_id: params[:sake_id])
    render 'btn-fav.js.erb'
  end

  def destroy
    @sake = Sake.find(params[:sake_id])
    @favorite = Favorite.find_by(user_id:current_user.id, sake_id:params[:sake_id])
    @favorite.destroy
    render 'btn-fav.js.erb'
  end
end

