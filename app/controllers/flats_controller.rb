class FlatsController < ApplicationController
  def index         # GET /restaurants
    @flats = Flat.all
  end

  def show          # GET /flats/:id
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create        # POST /flats
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end


  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end