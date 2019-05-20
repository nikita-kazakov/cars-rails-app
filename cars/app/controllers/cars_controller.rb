class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def update
    @car = Car.find(params[:id])
    @car.update(params.require(:car).permit(:make, :model))
    redirect_to @car

    #Below is the quickest way to update but with FORBIDDEN FAILURE.
    #fail
    #@car = Car.find(params[:id])
    #@car.update(params[:car])
    #redirect_to @car

  end


end
