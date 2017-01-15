class AddSquareFootageToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :square_footage, :integer
  end
end
