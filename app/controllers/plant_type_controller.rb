class PlantTypeController < ApplicationController
  before_action :authorize_request

  def index
    render json: PlantType.all
  end
end
