class UserController < ApplicationController
  before_action :authorize_request, except: :create


  def index
    binding.pry
    
  end

  def create

  end
end
