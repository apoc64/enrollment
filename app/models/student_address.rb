class StudentAddress < ApplicationRecord
  belongs_to :student
  belongs_to :address
end
