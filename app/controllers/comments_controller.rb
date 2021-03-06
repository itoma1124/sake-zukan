class CommentsController < ApplicationController
  def create 
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to "/sakes/#{comment.sake.id}"
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id],sake_id: params[:sake_id])
    if @comment.destroy
      redirect_to "/sakes/#{@comment.sake_id}"
    end
  end


  private
    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, sake_id: params[:sake_id])
    end
end
