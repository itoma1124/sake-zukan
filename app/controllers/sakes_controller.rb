class SakesController < ApplicationController 
  before_action :authenticate_user!, except:[:index,:show]
  before_action :sake_set, only: [:edit, :show, :update, :destroy]
  before_action :unmach_user, only: [:edit,:update,:destroy]

  def index
    @sakes = Sake.all.order(id: "DESC").page(params[:page]).per(12)
  end

  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)
    if @sake.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @sake.comments.includes(:user)
    @taste = Sake.where(taste_id:@sake.taste_id).first(3)
    @sourness = Sake.where(sourness_id:@sake.sourness_id).first(3)
    @easy = Sake.where(easy_id:@sake.easy_id).first(3)

  end

  def edit
  end

  def update
    if @sake.update(sake_params)
      redirect_to user_path(current_user.id)
    else
      render :index
    end
  end

  def destroy
    if @sake.destroy
      redirect_to user_path(current_user.id)
    end
  end

  private
  def sake_params
    params.require(:sake).permit(:name, :category, :total_id, :taste_id, :sourness_id, :easy_id, :place, :impression, :maker, :area_id, :text, :image).merge(user_id:current_user.id)
  end

  def sake_set
    @sake = Sake.find(params[:id])
  end

  def unmach_user
    unless current_user.id == @sake.user_id
      redirect_to root_path
    end
  end

end
