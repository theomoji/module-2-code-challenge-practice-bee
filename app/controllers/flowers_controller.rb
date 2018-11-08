class FlowersController < ApplicationController
  def index
    @flowers = Flower.all
  end

  def new
    @flower = Flower.new
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.update(flower_params)
    redirect_to flower_path(@flower)
  end


  private

    def flower_params
        params.require(:flower).permit(:name, :pollen_capacity, :integer)
    end

end
