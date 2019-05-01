class FieldController < ApplicationController
  before_action :authorize_request

  def index
    user_fields = Field.where(user_id: user_id)
    render json: user_fields, each_serializer: FieldCollectionSerializer
  end
  
  def show
    field = Field.where(id: show_params[:id]).first
    render json: field
  end

  def create
    field = Field.create(create_params)
    render json: field, status: :created if field.valid?
    render_forbidden(field.errors) unless field.valid?
  end

  private

  def user_id
    @current_user.id
  end

  def plant_type_id
    PlantType.find_by_name(params[:plant_type][:label]).id
  end

  def create_params
    permitted = params.permit!
    {
      name: permitted["name"],
      coordinates: permitted["coordinates"],
      area: permitted["area"],
      description: permitted["description"],
      plant_type_id: plant_type_id,
      user_id: user_id,
    }
  end

  def show_params
    permitted = params.permit!
    {
      id: permitted["id"]
    }
  end
end
