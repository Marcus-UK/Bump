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
          redirect_to places_path
        else
          flash[:alert] = "Your new place couldn't be added! Please check the form."
          render :new
        end
  end

  def show
  end

  private

  def place_params
    params.require(:place).permit(:title, :address)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
