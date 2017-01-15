class Owner < ActiveRecord::Base
  has_many :units

  def total_monthly_earnings(owner)
    owner.units.map do |unit|
      unit.monthly_rent
    end.reduce(:+)
  end
end
