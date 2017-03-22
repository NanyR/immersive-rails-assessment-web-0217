class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode=Episode.new
  end

  def create
    @episode=Episode.new(episode_params)
    if @episode.valid?
      @episode.save
      redirect_to episode_path(@episode)
    else
      render :new
    end
  end

  def show
    @episode=set_episode
  end

  private

  def set_episode
    @episode=Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:date, :number)
  end

end
