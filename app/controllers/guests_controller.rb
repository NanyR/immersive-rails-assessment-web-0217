class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest=Guest.new
    @episode=Episode.find(params[:episode_id])
  end

  def create
    byebug
  end

  private

  def set_guest
    @guest=Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name)
  end


end
