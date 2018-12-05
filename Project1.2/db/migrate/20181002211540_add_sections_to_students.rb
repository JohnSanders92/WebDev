class AddSectionsToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :sections, :integer
  end
end
