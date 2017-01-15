class AddCostPerSquareFootToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :cost_per_square_foot, :integer
  end
end
