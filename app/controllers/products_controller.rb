class ProductsController < ApplicationController


  def index
      @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @brand = Product.find(params[:id]).brand_id
    @product = Product.find(params[:id])
  end


    def create
      @product = Product.create(product_params)
      if @product.save
          redirect_to products_path()
      else
          render 'new'
      end
    end

  def update
    @product = Product.find(params[:id])
    @brand = @product.brand_id

    if @product.update(product_params)
      redirect_to brands_path(@brand)
    else
      render 'edit'
    end
  end

  def destroy

   @brand = Product.find(params[:id]).brand_id
   @product = Product.find(params[:id])
   @product.destroy
   redirect_to brand_path(@brand)
 end

  private
    def product_params
      params.require(:product).permit(:name, :color, :price, :brand_id)
    end
end
