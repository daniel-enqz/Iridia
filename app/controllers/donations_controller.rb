class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_donation, only: %i[show edit update destroy]

  def index
    @donations = policy_scope(Donation).order(created_at: :desc)
  end

  def show
    authorize @donation
  end

  def new
    @donation = Donation.new
    authorize @donation
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.owner = current_user
    @donation.customer = false
    authorize @donation
    if @donation.save
      # flash[:success] = "Donation Successfully created"
      redirect_to donations_path, notice: 'Donation was successfully created.'
    else
      render :new
    end
  end

  def edit
    authorize @donation
  end

  def update
    authorize @donation
    if @donation.update(donation_params)
      redirect_to donation_path(@donation)
    else
      render :edit
    end
  end

  def destroy
    authorize @donation
    @donation.destroy
    # When dashboard is reday redirect here
    # redirect_to dashboard_path, notice: 'Donation was successfully destroyed.'
    redirect_to dashboard_path, notice: 'Donation was successfully destroyed.'
  end

  def claim
    @donation = Donation.find(params[:id])
    authorize @donation
    @donation.update! status: 10, customer: current_user
    redirect_to donation_path(@donation)
  end

  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:name, :description, :owner, :category)
  end
end
