class ChargesController < ApplicationController
  def new
  end

  def create

    @amount = 1000
    
    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :amount => @amount,
      :currency => "usd",
      :description => "One time charge",
      :customer => customer.id,
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
