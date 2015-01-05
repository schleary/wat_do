class QueriesController < ApplicationController

  def index
    @queries = Query.all
  end

  def new
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to activities_path(@query)
    else
      render 'new'
    end
  end

  def query_params
    params.require(:query).permit(:price, :distance, :min_activity_level, :max_activity_level)
  end

end
