class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :student_name
      t.integer :student_id
      t.string :student_email
      t.string :courses
      t.interger :sections

      t.timestamps
    end
  end
end
