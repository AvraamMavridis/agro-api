class OperationTypeController < ApplicationController
  before_action :authorize_request

  def index
    render json: OperationType.all
  end
end
