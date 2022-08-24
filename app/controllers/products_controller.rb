class ProductsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(product_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
    @product.destroy
    redirect_to category_path(@category), status: 303
  end

  private
    def product_params
      params.require(:product).permit(:title_tk, :title_en, :title_ru, :description_tk, :description_en, :description_ru, :status)
    end
end
