require 'rails_helper'

describe 'user visits new student page' do
  scenario 'user can fill out a form to create a student' do

    visit new_student_path

    name = 'Nemo'
    fill_in 'student[name]', with
    click_on 'submit'

    expect(current_path).to eq(student_path(Student.last))
    expect(page).to have_content(name)

  end
end
