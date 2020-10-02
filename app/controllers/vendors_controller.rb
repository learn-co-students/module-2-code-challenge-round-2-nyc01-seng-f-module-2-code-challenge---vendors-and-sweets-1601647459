class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end


  private
  def vend_params
    params.require(:vendor).permit(:name)
  end
  
end
