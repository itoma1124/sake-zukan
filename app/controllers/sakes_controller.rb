class SakesController < ApplicationController 
  before_action :authenticate_user!, except:[:index,:show]
  before_action :sake_set, only: [:edit, :show, :update, :destroy]
  before_action :unmach_user, only: [:edit,:update,:destroy]

  def index
    @q = Sake.ransack(params[:q])
    @sakes = @q.result(distinct: true).order(id: "DESC").page(params[:page]).per(12)
    @name = Sake.select("name").distinct
    @category = Sake.select("category").distinct
    @sake_rank = Sake.find(Favorite.group(:sake_id).order('count(sake_id) desc').limit(10).pluck(:sake_id))
    @user_rank = User.find(Sake.group(:user_id).order('count(user_id) desc').limit(5).pluck(:user_id))
  end

  def search
    index
    render:index
  end


  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)
    if @sake.valid?
      @sake.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @q = Sake.ransack(params[:q])
    @comment = Comment.new
    @comments = @sake.comments.includes(:user)
    @similar = Sake.where(taste_id:@sake.taste_id,sourness_id:@sake.sourness_id,easy_id:@sake.easy_id).where.not(taste_id:0).where.not(id:@sake.id)
  end

  def edit
  end

  def update
    if @sake.update(sake_params)
      redirect_to sake_path(@sake.id)
    else
      render :edit
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
