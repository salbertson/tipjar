class Api::TipsController < Api::BaseController
  def create
    # Handle Stripe errors and report useful messages

    user = User.find(params[:user_id])

    if user.stripe_customer_id
      Stripe.api_key = 'sk_test_M7kGiZ992kSWZBeiz8DFPndS'
      amount = params[:amount]
      charge = Stripe::Charge.create(
        :amount => amount * 100, # Stripe wants cents
        :currency => "usd",
        :customer => user.stripe_customer_id,
        :description => "payinguser@example.com" # Not sure yet
      )

      respond_with(
        user.tips.create(amount: amount),
        location: nil
      )
    else
      # Stripe customer ID doesn't exist
      # Try the discourse approach to responding according to specific expectations
      head 400
    end
  end
end
