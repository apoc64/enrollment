class CreateStudentAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :student_addresses do |t|
      t.references :student, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
