class VendorSweetsController < ApplicationController


    def new
        @vendor_sweets = VendorSweet.new 
    end

    def create
        @vendor_sweets = VendorSweet.create(vs_params)

        if @vendor_sweets.valid?
           redirect_to vendors_path
        else 
            flash[:my_errors] = @vendor_sweets.errors.full_messages
            redirect_to new_vendor_sweet_path
        end 

    end 



    private

    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end 
    
end


