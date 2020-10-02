class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
   
    validates :vendor_sweet, numericality: true
    validates :vendor_sweet, numericality: { greater_than: 0 }
end
