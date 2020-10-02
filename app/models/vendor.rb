class Vendor < ApplicationRecord
      has_many :vendor_sweets
      has_many :sweets, through: :vender_sweets


end
