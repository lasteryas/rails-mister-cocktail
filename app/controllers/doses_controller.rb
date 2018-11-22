class DosesController < ApplicationController
  def new
    @doses = Dose.new
    @cocktail = Cocktail.new(params[:cocktail_id])
  end

  def create
    Dose.create(dose_params)
    redirect_to doses_path
  end

  def show
    @dose = Dose.find(params[:id])
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient, :description)
  end

  def set_doses
    @doses = Cocktail.find(params[:id])
  end
end
