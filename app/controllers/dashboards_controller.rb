class DashboardsController < ApplicationController
  def show
    skip_authorization
  end
end
