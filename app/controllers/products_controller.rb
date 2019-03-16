class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def update_all
    if Product.update_all(currency: params[:currency])
      redirect_back fallback_location: root_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents, :currency)
  end
end
