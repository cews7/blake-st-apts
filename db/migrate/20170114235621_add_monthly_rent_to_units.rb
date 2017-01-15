class AddMonthlyRentToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :monthly_rent, :integer
  end
end
