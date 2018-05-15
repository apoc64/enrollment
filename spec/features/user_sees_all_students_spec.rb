require 'rails_helper'

describe 'user visits students index' do
  scenario 'a user sees all students' do
    student1 = Student.create!(name: 'Steve')
    student2 = Student.create!(name: 'Steph')

    visit students_path

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
