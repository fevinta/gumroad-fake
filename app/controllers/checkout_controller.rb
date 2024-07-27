class CheckoutController < ApplicationController
  def index
    render inertia: "CheckoutPage", props: {
      name: params.fetch(:name, "World")
    }
  end
end
