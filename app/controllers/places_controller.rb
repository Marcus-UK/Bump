class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def new
  #  @user = User.find(params[:user_id])
    @place = current_user.build_place
  end

  def create
  #  @user = User.find(params[:user_id])
    @place = current_user.create_place(place_params)
        if @place.save
          flash[:success] = "Your location has been added!"
          redirect_to root_path
        else
          flash[:alert] = "Your new post couldn't be created!  Please check the form."
          redirect_to root_path
          render :new
        end
  end

  def show
  end

  def my_location
  end

  private

  def place_params
    params.require(:place).permit(:title, :address)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
