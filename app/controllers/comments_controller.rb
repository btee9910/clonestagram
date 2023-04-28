class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create comment_params
    @current_user.comments << comment
    redirect_to comment
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def show
    @comment = Comment.find params[:id]
  end

  def update
    comment = Comment.find params[:id]
    @current_user.comments << comment
    comment.update comment_params
    redirect_to comment
  end

  def destroy
    comment = Comment.find params[:id]
    comment.destroy
    redirect_to comments_path
  end

  def comment_params
    params.require(:comment).permit(:msg, :photo_id, :user_id)
  end
end
