class CommentsController < ApplicationController
  def create
    current_user.comments.create(create_params)
    @comments = Comment.all
  end

  private
  def create_params
    params.require(:comment).permit(:text, :proto_id)
  end
end
