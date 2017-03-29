class DonationsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:index, :show, :edit, :create, :new, :update, :destroy]


  def index
    @donations = current_user.donations
  end

  def show
    @donation = current_user.donations.find(params[:id])
  end

  def new
    @donation = current_user.donations.new
  end

  def edit
  end

  def create
    @donation = current_user.donations.new(donation_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'A new charity was successfully added.' }

      else
        format.html { render :new }

      end
    end
  end

  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Charity was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:charity_name,
                                     :tax_id#,
                                     # :charge,
                                     # :subscription      
                                    )
  end

end
