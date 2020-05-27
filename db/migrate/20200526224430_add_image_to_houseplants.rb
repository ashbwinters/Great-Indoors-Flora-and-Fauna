class AddImageToHouseplants < ActiveRecord::Migration[6.0]
  def change
    add_column :houseplants, :image, :string
  end
end
