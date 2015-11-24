class LocationsController < ApplicationController
  before_action :set_location, except:[:index, :new, :create]

  def index
    @locations = Location.all
    @location = Location.new
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:notice] = 'The new location has been successfully saved'
      redirect_to @location
    else
      flash[:alert] = 'There was a problem saving that location'
      render :new
    end
  end

  def show
  end

  def destroy
    if @location.destory
      flash[:notice] = 'The location has been deleted'
      redirect_to :index
    else
      flash[:alert] = 'There was a problem deleting that location'
      redirect_to @location
    end
  end

  private
  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name)
  end
end
