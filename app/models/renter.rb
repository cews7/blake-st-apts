class Renter < ActiveRecord::Base
  belongs_to :unit

  def unit_cost_per_sq_foot
    unit.cost_per_square_foot
  end
end
