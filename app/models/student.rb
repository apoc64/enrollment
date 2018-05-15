class Student < ApplicationRecord
  validates :name, presence: true

  has_many :addresses, through: :student_addresses
end
