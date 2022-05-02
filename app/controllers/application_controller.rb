class ApplicationController < ActionController::Base
  # Every route will be protected by default
  before_action :authenticate_user!
end
