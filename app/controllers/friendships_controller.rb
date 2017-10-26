class FriendshipsController < ApplicationController

  def index
    @friendships = current_user.friendships.all
  end

  def create
    binding.pry
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to users_path
    else
      flash[:notice] = "Unable to add friend."
      redirect_to users_path
    end
  end


  def destroy
    @friendship = current_user.friendships.find_by!(friend_id: params[:id]) # placeholder until we work this out
    @friendship.destroy
    if @friendship.present?
      flash[:notice] = "Success: Removed friendship."
      redirect_to friendships_path
    else
      flash[:notice] = "Error: Friendship could not be removed"
      redirect_to friendships_path
    end
  end
end
