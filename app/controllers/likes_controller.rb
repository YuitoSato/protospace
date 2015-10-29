class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Like.where(proto_id: params[:proto_id])
    @proto = Proto.find(params[:proto_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, proto_id: params[:proto_id])
    like.destroy
    @likes = Like.where(proto_id: params[:proto_id])
    @proto = Proto.find(params[:proto_id])
  end
end
