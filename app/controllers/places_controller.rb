class PlacesController < ApplicationController

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
      flash[:success] = "Place added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  private

  def place_params
    params.require(:place).permit(:title, :address, :visited_by)
  end

end
