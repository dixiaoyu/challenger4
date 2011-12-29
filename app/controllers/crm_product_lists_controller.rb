class CrmProductListsController < ApplicationController
  def index
    @products=CrmProductList.all
  end

  def new
    @product=CrmProductList.new
  end

  def create
    @product=CrmProductList.new(params[:crm_product_list])
    if @product.save
      #sign_in @member
      #flash[:sucess]="Welcome to Challenger!"
      redirect_to @product
    else 
      render 'new'  
    end
  end

  def show
    @product = CrmProductList.find(params[:id].split)
  end

  def destory
  end

end
