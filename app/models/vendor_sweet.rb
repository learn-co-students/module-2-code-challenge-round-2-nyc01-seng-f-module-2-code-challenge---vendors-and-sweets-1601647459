class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet
    validates :price, numericality: {greater_than: 0}
    validates :price, presence: true
end
