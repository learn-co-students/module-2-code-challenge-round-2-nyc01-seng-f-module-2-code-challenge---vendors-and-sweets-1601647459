class Sweet < ApplicationRecord
      has_many :vendor_sweets
      has_many :vendors, through: :vender_sweets

end
