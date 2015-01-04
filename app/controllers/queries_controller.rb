class QueriesController < ApplicationController

  def index
    @queries = Query.all
  end
  
  def new
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)
# change this, as you don't really want to save this info
    if @query.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def query_params
    params.require(:query).permit(:price, :distance)
  end

end
