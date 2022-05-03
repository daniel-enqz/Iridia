class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # before_action :set_donation, only: %i[show edit update destroy]

  def index
    @donations = policy_scope(Donation).order(created_at: :desc)
  end

  def new
    @donation = Donation.new
    authorize @donation
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.owner = current_user
    authorize @donation
    if @donation.save
      redirect_to donations_path, notice: 'Donation was successfully created.'
    else
      render :new
    end
  end

  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:name, :description, :owner, :category)
  end
end
