class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    if @plant.save
      redirect_to plant_path(@plant), notice: 'added!'
    else
      render :new
    end
  end

  private
  def plant_params
    params.require(:plant).permit(:title, :description, :photo)
  end
end
