class Address < ApplicationRecord
  validates :street_address, :city, :state, :zip, presence: true

end
