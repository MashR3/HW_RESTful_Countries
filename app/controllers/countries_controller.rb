class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @countries = Country.new
  end

  def create
    new_country = Country.new(country_params)
    new_country.name = 
    new_country.save
    redirect_to "/countries"
  end

  def show
    @country = Country.find(params[:id])
  end

  def edit
    @countries = Country.find(params[:id])
  end

  def update
  end

  def destroy
    @countries = Country.destroy(params[:id])
    redirect_to "/countries"
  end
end
