class VendorSweetsController < ApplicationController


      def index
          @vendorsweets = VendorSweet.all
      end 
      def show
          @vendorsweet = VendorSweet.find(params[:id]) 
      end 


      def new
          @vendorsweet = VendorSweet.new
      end
      def create
          @vendorsweet = VendorSweet.create(vendorsweet_params)

          redirect_to vendor_path(@vendorsweet.vendor)
      #     byebug
      end




      private 

      def vendorsweet_params
          params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
      end


end
