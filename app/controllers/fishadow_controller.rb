class FishadowController < ApplicationController
  before_action :move_root_fishings

  private

  def move_root_fishings
    redirect_to fishings_path if user_signed_in?
  end
end
