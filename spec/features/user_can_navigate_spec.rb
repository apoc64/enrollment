require 'rails_helper'

describe 'user visits edit student page' do
  scenario 'a user can navigate to index' do
    student = Student.create!(name: 'Steph')

    visit edit_student_path(student)

    click_link "All Students"

    expect(current_path).to eq(students_path)
  end
  
  scenario 'a user can navigate to index' do
    student = Student.create!(name: 'Steph')

    visit edit_student_path(student)

    click_link "Create Student"

    expect(current_path).to eq(new_student_path)
  end
end
#
# As a user
# When I visit any page
# I see links to see a list of all students, or create a new studentAs a user
