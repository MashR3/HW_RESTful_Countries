class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @countries = Country.new
  end

  def create
    new_country = Country.new
    new_country.name = params[:name]
    new_country.population = params[:population]
    new_country.flag_url = params[:flag_url]
    new_country.first_language = params[:first_language]
    new_country.name_of_president = params[:name_of_president]
    new_country.save
    redirect_to "/countries"
  end

  def show
    @country = Country.find(params[:id])
  end

  def edit
    new_country = Country.find(params[:id])
    new_country.name = params[:name]
    new_country.population = params[:population]
    new_country.flag_url = params[:flag_url]
    new_country.first_language = params[:first_language]
    new_country.name_of_president = params[:name_of_president]
    new_country.save

    redirect_to "/countries"
  end

  def update
  end

  def destroy
    @countries = Country.destroy(params[:id])
    redirect_to "/countries"
  end  
end
