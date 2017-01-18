class Unit < ActiveRecord::Base
  has_one :renter

  def cost_per_square_foot
    (monthly_rent / square_footage)
  end
end
