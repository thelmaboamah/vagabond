  class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
    render :index
  end

  def show
    render :show
  end

  def new
    @cities = City.new
    render :new
  end

  def create
    @city = City.create(city_params)
    redirect_to :index
  end

  def edit
    @city = City.find(city_params)
  end

  def update
    @city = City.find(city_params)
    @city.update_attributes(city_params)
    redirect_to :index
  end

  def destroy
    @city.destroy
    redirect_to :index
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :photo)
  end
end
