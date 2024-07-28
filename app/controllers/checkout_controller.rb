class CheckoutController < ApplicationController
  def index
    product = Product.first
    render inertia: "CheckoutPage", props: {
      cartProducts: [product],
      bumpProductsAvailable: Product.where.not(id: product.id).where(author: product.author),
      peopleAlsoBoughtProducts: Product.where.not(author:product.author).limit(3)
    }
  end
end
