class TopController < ApplicationController
  def index
    @protos = Proto.order('likes_count DESC').page(params[:page]).per(8)
  end
end
