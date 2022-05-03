class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_donation, only: %i[show edit update destroy]

  def index
    @donations = policy_scope(Donation).order(created_at: :desc)
  end

  def show
    authorize @donations
    @booking = Booking.new
    @markers = [{ lat: @studio.latitude, lng: @studio.longitude }]
  end

  def new
    @donation = Donation.new
    authorize @donation
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.owner = current_user
    @donation.customer = current_user
    authorize @donation
    if @donation.save
      # flash[:success] = "A daily Workout Was Created !"
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
