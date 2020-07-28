class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pic_url
      t.string :description
      t.string :animal

      t.timestamps
    end
  end
end
