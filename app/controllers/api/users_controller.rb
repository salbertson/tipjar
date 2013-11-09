class Api::UsersController < Api::BaseController
  def update
    # Handle Stripe errors and report useful messages

    user = User.find(params[:user_id])
    user.name = params[:name] if params[:name]
    stripe_token = params[:stripe_token]

    if stripe_token
      Stripe.api_key = 'sk_test_M7kGiZ992kSWZBeiz8DFPndS'
      customer = Stripe::Customer.create(
        :card => stripe_token,
        :description => user.email
      )
      user.stripe_customer_id = customer.id
    end

    respond_with user.save, location: nil
  end
end
