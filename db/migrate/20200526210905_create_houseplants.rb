class CreateHouseplants < ActiveRecord::Migration[6.0]
  def change
    create_table :houseplants do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :sun_requirements
      t.string :water_requirements
      t.string :description
      t.boolean :toxic_to_dogs
      t.boolean :toxic_to_cats

      t.timestamps
    end
  end
end
