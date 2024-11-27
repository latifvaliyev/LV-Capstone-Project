class CreateUniversities < ActiveRecord::Migration[7.1]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :uni_image

      t.timestamps
    end
  end
end
