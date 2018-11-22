class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktails
    @cocktails = Cocktail.find(params[:id])
  end
end
