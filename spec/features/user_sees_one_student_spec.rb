require 'rails_helper'

describe 'user visits students index' do
  scenario 'a user sees all students' do
    student = Student.create!(name: 'Steve')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
