class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.references :user, null: false, foreign_key: true
      t.references :houseplant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
