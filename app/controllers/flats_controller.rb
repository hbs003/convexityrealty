class FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params[:flat])
    @flat.save
    redirect_to flat_path(@flat)
  end


  def edit
    @flat = Flat.find(params[:id])
  end

  def index
    @flats = Flats.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(params[:flat])
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :price, :address, :area, :description)
  end
end
