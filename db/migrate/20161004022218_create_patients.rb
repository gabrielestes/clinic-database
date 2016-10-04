class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.integer :pID
      t.string :last_name
      t.string :first_name
      t.date :birth_date

      t.timestamps
    end
  end
end
