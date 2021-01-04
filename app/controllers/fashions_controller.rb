class FashionsController < ApplicationController
  before_action :set_fashion, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @fashions = Fashion.includes(:user)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def fashion_params
    params.require(:fashion).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def set_fashion
    @prototype = Prototype.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @prototype.user
  end

end
