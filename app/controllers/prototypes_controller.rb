class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_prototype, only: [:edit, :update, :show]


  def index
    @prototypes = Prototype.all
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
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
  end

  def edit
    if current_user != @prototype.user
      redirect_to root_path
    end
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to @prototype
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    prototypes = Prototype.find(params[:id])
    prototypes.destroy
    redirect_to root_path
  end

private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end

