class UserController < ApplicationController
  before_action :authorize_request, except: :create


  def index
    
  end

  def create

  end
end
