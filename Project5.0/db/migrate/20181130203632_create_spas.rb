class CreateSpas < ActiveRecord::Migration[5.1]
  def change
    create_table :spas do |t|

      t.timestamps
    end
  end
end
