class RemoveWaterRequirementsFromHouseplants < ActiveRecord::Migration[6.0]
  def change
    remove_column :houseplants, :water_requirements, :string
  end
end
