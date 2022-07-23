class FishingsController < ApplicationController
  before_action :authenticate_user!, expect: :index

  def index
  end

  def new
    @fishings = Fishing.new
  end


end
