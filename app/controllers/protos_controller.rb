class ProtosController < ApplicationController
  def index
    @protos = Proto.order(:created_at).reverse_order.page(params[:page]).per(8)
  end

  def new
    @proto = Proto.new
    @proto.images.build
  end

  def create
    @proto = Proto.create(create_params)
    if @proto.valid?
      redirect_to :root
    else
      redirect_to action: :new
    end
  end

  def show
    @proto = Proto.find(params[:id])
    @likes = Like.where(proto_id: params[:id])
      if user_signed_in?
        if @proto.like_user(current_user.id).present?
          @like = Like.where(user_id: current_user.id, proto_id: params[:id])
        end
      end
    @comment = Comment.new
    @comments = @proto.comments
  end

  def edit
    @proto = Proto.find(params[:id])
  end

  def update
    Proto.find(params[:id]).update(update_params)
    redirect_to :root
  end

  def destroy
    proto = Proto.find(params[:id])
    if proto.user_id == current_user.id
      proto.destroy
      redirect_to :root
    else
      redirect_to :root
    end
  end

  private
  def create_params
    params.require(:proto).permit(:title, :catch_copy, :concept, images_attributes: [:image, :status]).merge(tag_list: params[:tags]).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:proto).permit(:title, :catch_copy, :concept, images_attributes: [:image, :status, :id]).merge(tag_list: params[:tags]).merge(user_id: current_user.id)
  end
end
