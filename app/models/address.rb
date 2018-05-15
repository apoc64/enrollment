class Address < ApplicationRecord
  validates :street_address, :city, :state, :zip, presence: true

  has_many :students, through: :student_addresses
end
