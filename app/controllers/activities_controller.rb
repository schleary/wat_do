class ActivitiesController < ApplicationController

  def index
    @query = Query.find(params[:id])
    puts "QUERY: #{@query.max_activity_level.inspect} HAHAHA"
    puts @query.max_activity_level
    @activities = Activity.where( price: 0..@query.price,
                                  distance: 0..@query.distance,
                                  min_activity_level: @query.min_activity_level..@query.max_activity_level,
                                  max_activity_level: @query.min_activity_level..@query.max_activity_level
                                  )
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:price, :distance, :name, :url, :description, :min_activity_level, :max_activity_level)
  end


end
