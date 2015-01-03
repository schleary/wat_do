class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity.new(activity_params)
    if @activity.save
      redirect_to activities_show_path(@activitiy)
    else
      render 'new'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:price, :distance)
  end


end
