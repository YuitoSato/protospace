class TopController < ApplicationController
  def index
    @protos = Proto.page(params[:page]).per(8)
  end
end
