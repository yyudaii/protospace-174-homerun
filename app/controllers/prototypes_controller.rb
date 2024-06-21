class PrototypesController < ApplicationController
  def index
    @prototype = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params) 
    if @prototype.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :cocept, :image).merge(user_id: current_user.id)
  end
end

# current_user.id は不要？