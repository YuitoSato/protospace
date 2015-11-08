class CommentsController < ApplicationController
  def create
    current_user.comments.create(create_params)
    proto = Proto.find(params[:proto_id])
    @comments = proto.comments
  end

  private
  def create_params
    params.require(:comment).permit(:text, :proto_id)
  end
end
