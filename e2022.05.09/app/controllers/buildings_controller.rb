class BuildingsController < ApplicationController
  def index
    @buildings = Building.all.reverse_order
  end

  def new
    @building = Building.new
    @building.apartments.build
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to building_path(@building)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private
    def building_params
      params.require(:building).permit(:name, apartments_attributes:[:id, :number, :_destroy])
    end
end

