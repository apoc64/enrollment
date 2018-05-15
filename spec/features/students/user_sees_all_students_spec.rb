require 'rails_helper'

describe 'user visits students index' do
  scenario 'a user sees all students' do
    student1 = Student.create!(name: 'Steve')
    student2 = Student.create!(name: 'Steph')

    visit students_path

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end

  scenario 'a user can delete a student' do
    student1 = Student.create!(name: 'Steve')
    student2 = Student.create!(name: 'Steph')

    visit students_path

    within(".student_#{student1.id}") do
      click_link 'Delete'
    end

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student1.name)
    expect(page).to have_content(student2.name)
  end

  scenario 'a user can navigate to student show' do
    student1 = Student.create!(name: 'Steve')
    student2 = Student.create!(name: 'Steph')

    visit students_path

    click_link student1.name

    expect(current_path).to eq(student_path(student1))
    expect(page).to_not have_content(student2.name)
    expect(page).to have_content(student1.name)
  end
end

# As a user
# When I visit `/students`
# And I click on a student's name
# I am taken to a show page for that student

# #   As a user
# # When I visit `/students`
# # And I click "Delete" next to a student's name
# I see the students index
# And that student's name is no longer on the page
