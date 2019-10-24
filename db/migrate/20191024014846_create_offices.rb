class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.integer :office_number
      t.string :location
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
