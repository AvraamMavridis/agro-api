class FieldController < ApplicationController
  before_action :authorize_request

  def index
    user_fields = Field.where(user_id: user_id)
    render json: user_fields
  end
  
  def show
  end

  def create
    field = Field.create(field_params)
    render json: field, status: :created if field.valid?
    render_forbidden(field.errors) unless field.valid?
  end

  private

  def user_id
    @current_user.id
  end

  def plant_type_id
    PlantType.find_by_name(params[:plant_type]).id
  end

  def field_params
    params
    .require(:field)
    .permit(:name)
    .merge({ user_id: user_id, plant_type_id: plant_type_id })
  end
end
