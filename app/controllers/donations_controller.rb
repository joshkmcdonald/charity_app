class DonationsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]


  def index
    @donations = current_user.donations
  end

  def show
    @donation = current_user.donations.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
