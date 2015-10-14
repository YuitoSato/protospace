class ProtosController < ApplicationController
  def new
    @proto = Proto.new
  end

  def create
    @proto = Proto.create(create_params)
    redirect_to :root
  end

  # def edit
  #   @proto = Proto.find(params[:id])
  # end

  # def update
  #   @proto = Proto.update(update_params)
  #   redirect_to :root
  # end

  # def destroy
  #   proto = Proto.find(params[:id])
  #   if proto.user_id == current_user.id
  #     proto.destroy
  #     redirect_to :root
  #   else
  #     redirect_to :root
  #   end
  # end

  private
  def create_params
    params.require(:proto).permit(:title, :catch_copy, :concept)
  end

  # def update_params
  #   params.require(:proto).permit(:title, :catch_copy, :concept)
  # end
end