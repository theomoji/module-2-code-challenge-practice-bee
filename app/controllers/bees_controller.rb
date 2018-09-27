class BeesController < ApplicationController
  before_action :set_bee , only: [:edit, :update]


  def index
    @bees = Bee.all
  end

  def edit
    @hives = Hive.all
  end

  def update
    @bee.update(bee_params)
    if @bee.valid?
      redirect_to bees_path
    else
      flash[:errors] = @bee.errors.full_messages
      redirect_to edit_bee_path(@bee)
    end
  end

  private
  def set_bee
    @bee = Bee.find(params[:id])
  end

  def bee_params
    params.require(:bee).permit(:name, :hive_id, :queen)
  end
end
