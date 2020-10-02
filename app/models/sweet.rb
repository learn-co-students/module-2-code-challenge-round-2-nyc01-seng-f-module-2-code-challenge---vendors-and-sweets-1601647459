class Sweet < ApplicationRecord
    has_many :vendors
    has_many :vendors, through: :vendor_sweets

end
