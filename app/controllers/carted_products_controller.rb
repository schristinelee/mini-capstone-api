class CartedProductsController < ApplicationController
  def create
    cartedproduct = Cartedproduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if product.save #happy path
      render json: product.as_json
    else #sad path
      render json: { errors: product.errors.full_messages }, status: 418
    end
  end
end
