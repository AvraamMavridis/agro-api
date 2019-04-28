class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_email(user_params[:email])

    if @user.present?
      @token = JsonWebToken.encode(user_id: @user.id)
      @time = Time.now + 24.hours.to_i
      User.update({ image: user_params[:image] })
      render_ok
    else
      begin
        user = User.new(user_params)
        user.save
        @token = JsonWebToken.encode(user_id: user.id)
        @time = Time.now + 24.hours.to_i
        render_ok
      rescue => e
        head 500
      end
    end
  end

  private

  def render_ok
    render json: { token: @token, exp: @time.strftime("%m-%d-%Y %H:%M") }, status: :ok
  end

  def user_params
    params.require(:authentication).permit(:email, :name, :image)
  end
end
