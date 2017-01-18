class Renter < ActiveRecord::Base
  belongs_to :unit

  def unit_cost_per_sq_foot
    unit.cost_per_square_foot
  end

  def self.avg_cost_per_sq_foot(renters)
    renters.map { |renter| renter.unit_cost_per_sq_foot.to_i }.sum / renters.count
  end
end
