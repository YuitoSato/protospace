class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @protos = Proto.tagged_with(params[:tag_name]).order(:likes_count).reverse_order.page(params[:page]).per(8)
  end
end
