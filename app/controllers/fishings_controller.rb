class FishingsController < ApplicationController
  before_action :authenticate_user!, expect: :index

  def index
  end

  def new
    @fishing = Fishing.new
  end

  def create
    @fishing = Fishing.new(fishing_params)
    if @fishing.save
      redirect_to fishings_path
    else
      render :new
    end
  end

  private
  def fishing_params
    params.require(:fishing).permit(:get_date, :fish_name, :get_number, :size, :weight, :style, :explain, :wether, :lat, :lng, :image).merge(user_id: current_user.id)
  end
end
