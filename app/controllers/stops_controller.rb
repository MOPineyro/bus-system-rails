class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
    render 'new'
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      redirect_to stops_path
    else
      render 'new'
    end
  end
end
