class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.string :city
      t.integer :alum_id
      t.string :address
      t.string :unit_image
      t.text :unit_bio

      t.timestamps
    end
  end
end
