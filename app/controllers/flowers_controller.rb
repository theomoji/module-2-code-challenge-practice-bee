class FlowersController < ApplicationController


  def index
    @flowers =  Flower.all
  end

  def new
    @bees = Bee.all
    @flower = Flower.new
  end

  def show
    @flower = Flower.find(params[:id])
    @bees = @flower.bees
  end

  def create
    @flower = Flower.new(flower_params)
    if @flower.valid?
      @flower.save
      redirect_to @flower
    else
      flash[:errors] = @flower.errors.full_messages
      redirect_to new_flower_path
    end
  end

  private
    def flower_params
      params.require(:flower).permit( :name, :pollen_capacity, bee_ids: [])
    end
end
