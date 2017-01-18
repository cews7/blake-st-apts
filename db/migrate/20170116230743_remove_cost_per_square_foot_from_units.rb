class RemoveCostPerSquareFootFromUnits < ActiveRecord::Migration[5.0]
  def change
    remove_column :units, :cost_per_square_foot, :integer
  end
end
