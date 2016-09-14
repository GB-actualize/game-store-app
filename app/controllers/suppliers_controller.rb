class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def new
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def create
    @supplier = Supplier.create(name: params[:name],
                                phone: params[:phone],
                                email: params[:email])
    redirect_to "/suppliers"
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end
  
  def update
    @supplier = Supplier.find(params[:id])
    @supplier.update(name: params[:name],
                    phone: params[:phone],
                    email: params[:email])
    flash[:edit] = "Supplier altered"
    redirect_to "/suppliers"
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    redirect_to '/suppliers'
  end
end