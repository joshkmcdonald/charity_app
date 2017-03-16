class DonationsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]


  def index
    @donations = current_user.donations
  end

  def show
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
