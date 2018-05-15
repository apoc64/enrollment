require 'rails_helper'

describe 'user visits students index' do
  scenario 'a user sees all students' do
    student = Student.create!(name: 'Steve')

    visit edit_student_path(student)

    name = 'Nemo'
    fill_in 'student[name]', with: name
    click_button 'Update'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(name)
  end
end

# As a user
# When I visit `/students/:id/edit`
# And I enter a new name
# And I click submit
# I am on the student show page
# And I can see that student's new name
