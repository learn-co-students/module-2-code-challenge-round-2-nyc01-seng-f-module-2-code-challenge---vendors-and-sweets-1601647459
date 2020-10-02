class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end
    
    def create
        @vendor_sweet = VendorSweet.create(vs_params)
        if vendor_sweet.valid?
        redirect_to sweet_path(vendor_sweet)
        else
            flash[:not_valid] = vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweets_path
        end
        #Getting an error w/ the creation, which means I can't test the validations but I believe they are correct.
    end


    private
    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
    end

end
