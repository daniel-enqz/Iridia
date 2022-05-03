class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @donations = policy_scope(Donation).order(created_at: :desc)
  end
end
