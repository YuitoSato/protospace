class TopController < ApplicationController
  def index
    @protos = Proto.order(:likes_count).reverse_order.page(params[:page]).per(8)
  end
end
