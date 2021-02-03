class FavoritesController < ApplicationController
  def create 
    favorite = Favorite.new(user_id: current_user.id, sake_id: params[:sake_id])
    if favorite.save 
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id:current_user.id, sake_id:params[:sake_id])
    if @favorite.destroy
      redirect_back(fallback_location: root_path)
    end
  end

end

