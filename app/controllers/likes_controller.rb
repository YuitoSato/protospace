class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Like.where(proto_id: params[:proto_id])
    proto = @like.proto
    redirect_to proto_path(proto)
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, proto_id: params[:proto_id])
    proto = like.proto
    like.destroy
    @likes = Like.where(proto_id: params[:proto_id])
    redirect_to proto_path(proto)
  end
end
