class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(params.require(:car).permit(:make, :model, :transmission, :year, :cylinders, :mpg, :price, :image))
    if @car.save
      redirect_to cars_path
    else
      render :new
    end

  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(params.require(:car).permit(:make, :model, :transmission, :year, :cylinders, :mpg, :price, :image))
      redirect_to @car
    else
      render :edit

    end

    #Below is the quickest way to update but with FORBIDDEN FAILURE.
    #fail
    #@car = Car.find(params[:id])
    #@car.update(params[:car])
    #redirect_to @car

  end


end
