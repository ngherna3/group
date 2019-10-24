class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :office_number
      t.string :class_assignment

      t.timestamps
    end
  end
end
