class UserCommentsController < ApplicationController
  def index
    @comment = UserComment.all
  end

  def create
    @comment = UserComment.new(commentParams)
    if @comment.save
      flash[:success] = "Comment successfully added"
      redirect_to comments_path(@comment)
    else
      render 'new'
    end
  end

  private

  def commentParams
    params.require(:comment).permit(:comment)
  end
end
